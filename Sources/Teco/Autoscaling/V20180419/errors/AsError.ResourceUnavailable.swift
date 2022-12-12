//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCAsError {
    public struct ResourceUnavailable: TCAsErrorType {
        enum Code: String {
            case autoScalingGroupAbnormalStatus = "ResourceUnavailable.AutoScalingGroupAbnormalStatus"
            case autoScalingGroupDisabled = "ResourceUnavailable.AutoScalingGroupDisabled"
            case autoScalingGroupInActivity = "ResourceUnavailable.AutoScalingGroupInActivity"
            case cmqTopicHasNoSubscriber = "ResourceUnavailable.CmqTopicHasNoSubscriber"
            case cvmVpcInconsistent = "ResourceUnavailable.CvmVpcInconsistent"
            case instanceCannotAttach = "ResourceUnavailable.InstanceCannotAttach"
            case instanceInOperation = "ResourceUnavailable.InstanceInOperation"
            case instanceNotSupportStopCharging = "ResourceUnavailable.InstanceNotSupportStopCharging"
            case instancesAlreadyInAutoScalingGroup = "ResourceUnavailable.InstancesAlreadyInAutoScalingGroup"
            case launchConfigurationStatusAbnormal = "ResourceUnavailable.LaunchConfigurationStatusAbnormal"
            case lbBackendRegionInconsistent = "ResourceUnavailable.LbBackendRegionInconsistent"
            case lbProjectInconsistent = "ResourceUnavailable.LbProjectInconsistent"
            case lbVpcInconsistent = "ResourceUnavailable.LbVpcInconsistent"
            case lifecycleActionResultHasSet = "ResourceUnavailable.LifecycleActionResultHasSet"
            case loadBalancerInOperation = "ResourceUnavailable.LoadBalancerInOperation"
            case projectInconsistent = "ResourceUnavailable.ProjectInconsistent"
            case stoppedInstanceNotAllowAttach = "ResourceUnavailable.StoppedInstanceNotAllowAttach"
            case tdmqcmqTopicHasNoSubscriber = "ResourceUnavailable.TDMQCMQTopicHasNoSubscriber"
            case zoneUnavailable = "ResourceUnavailable.ZoneUnavailable"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }
        
        /// 伸缩组状态异常。
        public static var autoScalingGroupAbnormalStatus: ResourceUnavailable {
            ResourceUnavailable(.autoScalingGroupAbnormalStatus)
        }
        
        /// 伸缩组被停用。
        public static var autoScalingGroupDisabled: ResourceUnavailable {
            ResourceUnavailable(.autoScalingGroupDisabled)
        }
        
        /// 伸缩组正在活动中。
        public static var autoScalingGroupInActivity: ResourceUnavailable {
            ResourceUnavailable(.autoScalingGroupInActivity)
        }
        
        /// 指定的 CMQ Topic 无订阅者。
        ///
        /// 请核实您的 Topic。
        public static var cmqTopicHasNoSubscriber: ResourceUnavailable {
            ResourceUnavailable(.cmqTopicHasNoSubscriber)
        }
        
        /// 实例和伸缩组Vpc不一致。
        public static var cvmVpcInconsistent: ResourceUnavailable {
            ResourceUnavailable(.cvmVpcInconsistent)
        }
        
        public static var instanceCannotAttach: ResourceUnavailable {
            ResourceUnavailable(.instanceCannotAttach)
        }
        
        /// 指定的实例正在活动中。
        public static var instanceInOperation: ResourceUnavailable {
            ResourceUnavailable(.instanceInOperation)
        }
        
        /// 实例不支持关机不收费。
        public static var instanceNotSupportStopCharging: ResourceUnavailable {
            ResourceUnavailable(.instanceNotSupportStopCharging)
        }
        
        /// 实例已存在于伸缩组中。
        public static var instancesAlreadyInAutoScalingGroup: ResourceUnavailable {
            ResourceUnavailable(.instancesAlreadyInAutoScalingGroup)
        }
        
        /// 启动配置状态异常。
        public static var launchConfigurationStatusAbnormal: ResourceUnavailable {
            ResourceUnavailable(.launchConfigurationStatusAbnormal)
        }
        
        /// CLB实例的后端地域与AS服务所在地域不一致。
        public static var lbBackendRegionInconsistent: ResourceUnavailable {
            ResourceUnavailable(.lbBackendRegionInconsistent)
        }
        
        /// 负载均衡器项目不一致。
        public static var lbProjectInconsistent: ResourceUnavailable {
            ResourceUnavailable(.lbProjectInconsistent)
        }
        
        /// 负载均衡器VPC与伸缩组不一致。
        public static var lbVpcInconsistent: ResourceUnavailable {
            ResourceUnavailable(.lbVpcInconsistent)
        }
        
        /// 生命周期动作已经被设置。
        public static var lifecycleActionResultHasSet: ResourceUnavailable {
            ResourceUnavailable(.lifecycleActionResultHasSet)
        }
        
        /// LB 在指定的伸缩组内处于活动中。
        public static var loadBalancerInOperation: ResourceUnavailable {
            ResourceUnavailable(.loadBalancerInOperation)
        }
        
        /// 项目不一致。
        public static var projectInconsistent: ResourceUnavailable {
            ResourceUnavailable(.projectInconsistent)
        }
        
        /// 关机实例不允许添加到伸缩组。
        public static var stoppedInstanceNotAllowAttach: ResourceUnavailable {
            ResourceUnavailable(.stoppedInstanceNotAllowAttach)
        }
        
        /// TDMQ-CMQ 主题无订阅者。
        public static var tdmqcmqTopicHasNoSubscriber: ResourceUnavailable {
            ResourceUnavailable(.tdmqcmqTopicHasNoSubscriber)
        }
        
        /// 指定的可用区不可用。
        public static var zoneUnavailable: ResourceUnavailable {
            ResourceUnavailable(.zoneUnavailable)
        }
        
        public func asAsError() -> TCAsError {
            let code: TCAsError.Code
            switch self.error {
            case .autoScalingGroupAbnormalStatus: 
                code = .resourceUnavailable_AutoScalingGroupAbnormalStatus
            case .autoScalingGroupDisabled: 
                code = .resourceUnavailable_AutoScalingGroupDisabled
            case .autoScalingGroupInActivity: 
                code = .resourceUnavailable_AutoScalingGroupInActivity
            case .cmqTopicHasNoSubscriber: 
                code = .resourceUnavailable_CmqTopicHasNoSubscriber
            case .cvmVpcInconsistent: 
                code = .resourceUnavailable_CvmVpcInconsistent
            case .instanceCannotAttach: 
                code = .resourceUnavailable_InstanceCannotAttach
            case .instanceInOperation: 
                code = .resourceUnavailable_InstanceInOperation
            case .instanceNotSupportStopCharging: 
                code = .resourceUnavailable_InstanceNotSupportStopCharging
            case .instancesAlreadyInAutoScalingGroup: 
                code = .resourceUnavailable_InstancesAlreadyInAutoScalingGroup
            case .launchConfigurationStatusAbnormal: 
                code = .resourceUnavailable_LaunchConfigurationStatusAbnormal
            case .lbBackendRegionInconsistent: 
                code = .resourceUnavailable_LbBackendRegionInconsistent
            case .lbProjectInconsistent: 
                code = .resourceUnavailable_LbProjectInconsistent
            case .lbVpcInconsistent: 
                code = .resourceUnavailable_LbVpcInconsistent
            case .lifecycleActionResultHasSet: 
                code = .resourceUnavailable_LifecycleActionResultHasSet
            case .loadBalancerInOperation: 
                code = .resourceUnavailable_LoadBalancerInOperation
            case .projectInconsistent: 
                code = .resourceUnavailable_ProjectInconsistent
            case .stoppedInstanceNotAllowAttach: 
                code = .resourceUnavailable_StoppedInstanceNotAllowAttach
            case .tdmqcmqTopicHasNoSubscriber: 
                code = .resourceUnavailable_TDMQCMQTopicHasNoSubscriber
            case .zoneUnavailable: 
                code = .resourceUnavailable_ZoneUnavailable
            }
            return TCAsError(code, context: self.context)
        }
    }
}
