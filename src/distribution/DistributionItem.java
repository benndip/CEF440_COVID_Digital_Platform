


package distribution;

public class DistributionItem {
	private int id;
	private String region;
	private int peopleInRegion;
	private int infectedPeople;
	private int agentsToSend;
	private int numberOfItemsToGive;

	public DistributionItem(int id, String region, int peopleInRegion, int infectedPeople, int agentsToSend, int numberOfItemsToGive ) {
		this.id = id;
		this.region = region;
		this.peopleInRegion = peopleInRegion;
		this.infectedPeople = infectedPeople;
		this.agentsToSend = agentsToSend;
		this.numberOfItemsToGive = numberOfItemsToGive;
	}

}
