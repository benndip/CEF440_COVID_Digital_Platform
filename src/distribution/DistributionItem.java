package distribution;

public class DistributionItem {
	private Integer id;
	private String region;
	private String peopleInRegion;
	private String infectedPeople;
	private String agentsToSend;
	private String numberOfItemsToGive;

	public DistributionItem(int id, String region, String peopleInRegion, String infectedPeople, String agentsToSend, String numberOfItemsToGive ) {
		this.id = id;
		this.region = region;
		this.peopleInRegion = peopleInRegion;
		this.infectedPeople = infectedPeople;
		this.agentsToSend = agentsToSend;
		this.numberOfItemsToGive = numberOfItemsToGive;
	}

}
