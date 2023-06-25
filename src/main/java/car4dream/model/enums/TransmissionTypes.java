package car4dream.model.enums;

public enum TransmissionTypes {
    MANUAL("MANUAL"),
    AUTOMATIC("AUTOMATIC"),
    CONTINUOUSLY("CONTINUOUSLY"),
    SEMI_AUTOMATIC("SEMI_AUTOMATIC");

    private final String transmission;

    TransmissionTypes(String transmission){
        this.transmission = transmission;
    }

    public String getTransmission() {
        return transmission;
    }

    @Override
    public String toString() {
        return transmission;
    }
}
