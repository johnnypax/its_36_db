package dev.archety.lez07_layers.models;

public class Cve {

	private Integer id;
	private String name;
	private String description;
	private Float severity;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Float getSeverity() {
		return severity;
	}
	public void setSeverity(Float severity) {
		this.severity = severity;
	}
	@Override
	public String toString() {
		return "Cve [id=" + id + ", name=" + name + ", description=" + description + ", severity=" + severity + "]";
	}
	
	
	
}
