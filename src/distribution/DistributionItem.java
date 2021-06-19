


package distribution;

public class DistributionItem {
	public int id;
	public String region;
	public int peopleInRegion;
	public int infectedPeople;
	public int agentsToSend;
	public int numberOfItemsToGive;

	public DistributionItem(int id, String region, int peopleInRegion, int infectedPeople, int agentsToSend, int numberOfItemsToGive ) {
		this.id = id;
		this.region = region;
		this.peopleInRegion = peopleInRegion;
		this.infectedPeople = infectedPeople;
		this.agentsToSend = agentsToSend;
		this.numberOfItemsToGive = numberOfItemsToGive;
	}

}
