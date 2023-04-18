/**
 * @author BasementHalfStackDev/Josep Maria Pallas Batalla
 */
package E3.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import E3.dto.Producto;

public interface ProductoDAO extends JpaRepository<Producto, Long> {

}
