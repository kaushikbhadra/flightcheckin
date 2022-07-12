package com.kaushik.flightcheckin.integration;

import com.kaushik.flightcheckin.integration.dto.Reservation;
import com.kaushik.flightcheckin.integration.dto.ReservationUpdateRequest;

public interface ReservationRestClient {

	public Reservation findReservation(Long id);
	public Reservation updateReservation(ReservationUpdateRequest request);
}
