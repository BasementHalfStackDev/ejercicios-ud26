/**
 * @author BasementHalfStackDev/Josep Maria Pallas Batalla
 */
package E2.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import E2.dto.Cientifico;

public interface CientificoDAO extends JpaRepository<Cientifico, String> {

}
