package org.mirah;

public abstract class BuilderStepDescriptor extends hudson.tasks.BuildStepDescriptor<hudson.tasks.Builder> {
    public BuilderStepDescriptor() {
        super();
    }

    public BuilderStepDescriptor(Class<? extends hudson.tasks.Builder> clazz) {
        super(clazz);
    }

    public boolean isApplicable(Class<? extends hudson.model.AbstractProject> project) {
        return true;
    }
}
