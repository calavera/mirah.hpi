package org.mirah

import hudson.*
import hudson.model.*
import hudson.tasks.*

import net.sf.json.JSONObject
import org.kohsuke.stapler.*

class HelloMirahBuilder < Builder
  $Extension
  def self.getExtension
    @@extension ||= DescriptorImpl.new(HelloMirahBuilder.class)
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
