/**
 * @author BasementHalfStackDev/Josep Maria Pallas Batalla
 */
package E4.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import E4.dto.Investigador;

public interface InvestigadorDAO extends JpaRepository<Investigador, String> {

}
