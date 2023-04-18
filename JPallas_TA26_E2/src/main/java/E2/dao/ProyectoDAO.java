/**
 * @author BasementHalfStackDev/Josep Maria Pallas Batalla
 */
package E2.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import E2.dto.Proyecto;

public interface ProyectoDAO extends JpaRepository<Proyecto, String> {

}
