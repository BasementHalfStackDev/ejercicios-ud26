/**
 * @author BasementHalfStackDev/Josep Maria Pallas Batalla
 */
package E3.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import E3.dao.CajeroDAO;
import E3.dto.Cajero;

@Service // Assign Service
public class CajeroService {

	// Load DAO
	@Autowired
	CajeroDAO cajeroDAO;

	// CRUD functions
	public List<Cajero> listCajeros() {
		return cajeroDAO.findAll();
	}

	public Cajero saveCajero(Cajero cajero) {
		return cajeroDAO.save(cajero);
	}

	public Cajero cajeroById(Long id) {
		return cajeroDAO.findById(id).get();
	}

	public Cajero updateCajero(Cajero cajero) {
		return cajeroDAO.save(cajero);
	}

	public void deleteCajero(Long id) {
		cajeroDAO.deleteById(id);
	}

}
