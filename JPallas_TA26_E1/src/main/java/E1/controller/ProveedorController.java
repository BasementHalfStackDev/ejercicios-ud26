/**
 * @author BasementHalfStackDev/Josep Maria Pallas Batalla
 */
package E1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import E1.dto.Proveedor;
import E1.service.ProveedorService;

@RestController // Rest controller
@RequestMapping("/api")
public class ProveedorController {

	// Implement service
	@Autowired
	ProveedorService proveedorService;

	@GetMapping("/proveedors")
	public List<Proveedor> listProveedores() {
		return proveedorService.listProveedores();
	}

	@GetMapping("/proveedors/{id}")
	public Proveedor proveedorById(@PathVariable(name = "id") String id) {
		Proveedor proveedorxID = new Proveedor();

		proveedorxID = proveedorService.proveedorById(id);

		return proveedorxID;
	}

	@PostMapping("/proveedors")
	public Proveedor saveProveedor(@RequestBody Proveedor proveedor) {
		return proveedorService.saveProveedor(proveedor);
	}

	@PutMapping("/proveedors/{id}")
	public Proveedor updateProveedor(@PathVariable(name = "id") String id, @RequestBody Proveedor proveedor) {
		Proveedor selectedProveedor = new Proveedor(id, proveedor.getNombre());
		Proveedor updatedProveedor = new Proveedor();

		updatedProveedor = proveedorService.updateProveedor(selectedProveedor);
		return updatedProveedor;
	}

	@DeleteMapping("/proveedors/{id}")
	public void deleteProveedor(@PathVariable(name = "id") String id) {
		proveedorService.deleteProveedor(id);
	}

}
