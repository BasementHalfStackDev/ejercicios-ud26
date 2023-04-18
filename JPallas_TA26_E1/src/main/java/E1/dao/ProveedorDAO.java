/**
 * @author BasementHalfStackDev/Josep Maria Pallas Batalla
 */
package E1.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import E1.dto.Proveedor;

public interface ProveedorDAO extends JpaRepository<Proveedor, String> {

}
