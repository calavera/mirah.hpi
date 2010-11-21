package org.mirah;

public abstract class BuilderStepDescriptor extends hudson.tasks.BuildStepDescriptor<hudson.tasks.Builder> {
    protected BuilderStepDescriptor(Class clazz) {
        super(clazz);
    }
}
