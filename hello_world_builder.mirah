package org.mirah

import hudson.Launcher
import hudson.Extension
import hudson.util.FormValidation
import hudson.model.AbstractBuild
import hudson.model.BuildListener

import hudson.model.AbstractProject
import hudson.tasks.Builder
import hudson.tasks.BuildStepDescriptor
import net.sf.json.JSONObject
import org.kohsuke.stapler.DataBoundConstructor
import org.kohsuke.stapler.StaplerRequest
import org.kohsuke.stapler.QueryParameter
import javax.servlet.ServletException
import java.io.IOException

class HelloWorldBuilder < Builder

  $Extension
  def self.getExtension
    @@extension = DescriptorImpl.new(HelloWorldBuilder.class)
    @@extension
  end

  $DataBoundConstructor
  def initialize(name:String)
    @name = name
  end

  def perform(build:AbstractBuild, launcher:Launcher, listener:BuildListener)
    listener.getLogger.println("Hello Mirah!!")
    true
  end

  def getName
    @name
  end

  def getDescriptor
    @@extension
  end

  class DescriptorImpl < BuilderStepDescriptor
    def initialize(clazz:Class)
      super(clazz)
    end

    def configure(req:StaplerRequest, formData:JSONObject)
      super(req, formData)
      true
    end

    def getDisplayName
      "Mirah plugin"
    end
  end
end
