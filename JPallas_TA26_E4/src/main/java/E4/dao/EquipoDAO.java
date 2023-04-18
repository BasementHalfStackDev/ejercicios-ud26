/**
 * @author BasementHalfStackDev/Josep Maria Pallas Batalla
 */
package E4.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import E4.dto.Equipo;

public interface EquipoDAO extends JpaRepository<Equipo, String> {

}
