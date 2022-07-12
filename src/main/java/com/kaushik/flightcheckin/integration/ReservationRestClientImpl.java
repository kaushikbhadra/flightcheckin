package com.kaushik.flightcheckin.integration;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.kaushik.flightcheckin.integration.dto.Reservation;
import com.kaushik.flightcheckin.integration.dto.ReservationUpdateRequest;

@Component
public class ReservationRestClientImpl implements ReservationRestClient {

	private static final String RESERVATION_REST_URL = "http://localhost:8080/flightreservation/reservations/";

	@Override
	public Reservation findReservation(Long id) {
		RestTemplate restTemplet = new RestTemplate();
		Reservation reservation = restTemplet.getForObject(RESERVATION_REST_URL  + id,
				Reservation.class);
		return reservation;
	}

	@Override
	public Reservation updateReservation(ReservationUpdateRequest request) {
		RestTemplate restTemplet = new RestTemplate();
		Reservation reservation = restTemplet.postForObject(RESERVATION_REST_URL ,
				request, Reservation.class);
		return reservation;
	}

}
