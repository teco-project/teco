//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension TCAsError {
    public struct ResourceNotFound: TCAsErrorType {
        enum Code: String {
            case autoScalingGroupNotFound = "ResourceNotFound.AutoScalingGroupNotFound"
            case autoScalingNotificationNotFound = "ResourceNotFound.AutoScalingNotificationNotFound"
            case bandwidthPackageIdNotFound = "ResourceNotFound.BandwidthPackageIdNotFound"
            case cmqQueueNotFound = "ResourceNotFound.CmqQueueNotFound"
            case commandNotFound = "ResourceNotFound.CommandNotFound"
            case disasterRecoverGroupNotFound = "ResourceNotFound.DisasterRecoverGroupNotFound"
            case instancesNotFound = "ResourceNotFound.InstancesNotFound"
            case instancesNotInAutoScalingGroup = "ResourceNotFound.InstancesNotInAutoScalingGroup"
            case launchConfigurationIdNotFound = "ResourceNotFound.LaunchConfigurationIdNotFound"
            case lifecycleHookInstanceNotFound = "ResourceNotFound.LifecycleHookInstanceNotFound"
            case lifecycleHookNotFound = "ResourceNotFound.LifecycleHookNotFound"
            case lifecycleHookTokenNotFound = "ResourceNotFound.LifecycleHookTokenNotFound"
            case listenerNotFound = "ResourceNotFound.ListenerNotFound"
            case loadBalancerNotFound = "ResourceNotFound.LoadBalancerNotFound"
            case loadBalancerNotInAutoScalingGroup = "ResourceNotFound.LoadBalancerNotInAutoScalingGroup"
            case locationNotFound = "ResourceNotFound.LocationNotFound"
            case scalingPolicyNotFound = "ResourceNotFound.ScalingPolicyNotFound"
            case scheduledActionNotFound = "ResourceNotFound.ScheduledActionNotFound"
            case tdmqcmqQueueNotFound = "ResourceNotFound.TDMQCMQQueueNotFound"
            case tdmqcmqTopicNotFound = "ResourceNotFound.TDMQCMQTopicNotFound"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// 伸缩组不存在。
        public static var autoScalingGroupNotFound: ResourceNotFound {
            ResourceNotFound(.autoScalingGroupNotFound)
        }

        /// 通知不存在。
        public static var autoScalingNotificationNotFound: ResourceNotFound {
            ResourceNotFound(.autoScalingNotificationNotFound)
        }

        /// 指定的带宽包ID不存在。
        public static var bandwidthPackageIdNotFound: ResourceNotFound {
            ResourceNotFound(.bandwidthPackageIdNotFound)
        }

        /// 指定的 CMQ queue 不存在。
        ///
        /// 请核实您提供的 queue。
        public static var cmqQueueNotFound: ResourceNotFound {
            ResourceNotFound(.cmqQueueNotFound)
        }

        /// 命令不存在。
        public static var commandNotFound: ResourceNotFound {
            ResourceNotFound(.commandNotFound)
        }

        /// 请检查输入的置放群组ID是否正确，是否为当前地域的置放群组。
        public static var disasterRecoverGroupNotFound: ResourceNotFound {
            ResourceNotFound(.disasterRecoverGroupNotFound)
        }

        /// 指定的实例不存在。
        public static var instancesNotFound: ResourceNotFound {
            ResourceNotFound(.instancesNotFound)
        }

        /// 目标实例不在伸缩组内。
        public static var instancesNotInAutoScalingGroup: ResourceNotFound {
            ResourceNotFound(.instancesNotInAutoScalingGroup)
        }

        /// 指定的启动配置不存在。
        public static var launchConfigurationIdNotFound: ResourceNotFound {
            ResourceNotFound(.launchConfigurationIdNotFound)
        }

        /// 生命周期挂钩对应实例不存在。
        public static var lifecycleHookInstanceNotFound: ResourceNotFound {
            ResourceNotFound(.lifecycleHookInstanceNotFound)
        }

        /// 无法找到指定生命周期挂钩。
        public static var lifecycleHookNotFound: ResourceNotFound {
            ResourceNotFound(.lifecycleHookNotFound)
        }

        /// 指定的生命周期挂钩Token不存在。
        ///
        /// 配置TDMQ接收生命周期挂钩通知的消息，可从消息中获取对应Token，也可使用InstanceId代替该参数。
        public static var lifecycleHookTokenNotFound: ResourceNotFound {
            ResourceNotFound(.lifecycleHookTokenNotFound)
        }

        /// 指定的Listener不存在。
        public static var listenerNotFound: ResourceNotFound {
            ResourceNotFound(.listenerNotFound)
        }

        /// 找不到指定负载均衡器。
        public static var loadBalancerNotFound: ResourceNotFound {
            ResourceNotFound(.loadBalancerNotFound)
        }

        /// 指定的负载均衡器在当前伸缩组中没有找到。
        public static var loadBalancerNotInAutoScalingGroup: ResourceNotFound {
            ResourceNotFound(.loadBalancerNotInAutoScalingGroup)
        }

        /// 指定的Location不存在。
        public static var locationNotFound: ResourceNotFound {
            ResourceNotFound(.locationNotFound)
        }

        /// 告警策略不存在。
        public static var scalingPolicyNotFound: ResourceNotFound {
            ResourceNotFound(.scalingPolicyNotFound)
        }

        /// 指定的定时任务不存在。
        public static var scheduledActionNotFound: ResourceNotFound {
            ResourceNotFound(.scheduledActionNotFound)
        }

        /// TDMQ-CMQ 队列不存在。
        public static var tdmqcmqQueueNotFound: ResourceNotFound {
            ResourceNotFound(.tdmqcmqQueueNotFound)
        }

        /// TDMQ-CMQ 主题不存在。
        public static var tdmqcmqTopicNotFound: ResourceNotFound {
            ResourceNotFound(.tdmqcmqTopicNotFound)
        }

        public func asAsError() -> TCAsError {
            let code: TCAsError.Code
            switch self.error {
            case .autoScalingGroupNotFound:
                code = .resourceNotFound_AutoScalingGroupNotFound
            case .autoScalingNotificationNotFound:
                code = .resourceNotFound_AutoScalingNotificationNotFound
            case .bandwidthPackageIdNotFound:
                code = .resourceNotFound_BandwidthPackageIdNotFound
            case .cmqQueueNotFound:
                code = .resourceNotFound_CmqQueueNotFound
            case .commandNotFound:
                code = .resourceNotFound_CommandNotFound
            case .disasterRecoverGroupNotFound:
                code = .resourceNotFound_DisasterRecoverGroupNotFound
            case .instancesNotFound:
                code = .resourceNotFound_InstancesNotFound
            case .instancesNotInAutoScalingGroup:
                code = .resourceNotFound_InstancesNotInAutoScalingGroup
            case .launchConfigurationIdNotFound:
                code = .resourceNotFound_LaunchConfigurationIdNotFound
            case .lifecycleHookInstanceNotFound:
                code = .resourceNotFound_LifecycleHookInstanceNotFound
            case .lifecycleHookNotFound:
                code = .resourceNotFound_LifecycleHookNotFound
            case .lifecycleHookTokenNotFound:
                code = .resourceNotFound_LifecycleHookTokenNotFound
            case .listenerNotFound:
                code = .resourceNotFound_ListenerNotFound
            case .loadBalancerNotFound:
                code = .resourceNotFound_LoadBalancerNotFound
            case .loadBalancerNotInAutoScalingGroup:
                code = .resourceNotFound_LoadBalancerNotInAutoScalingGroup
            case .locationNotFound:
                code = .resourceNotFound_LocationNotFound
            case .scalingPolicyNotFound:
                code = .resourceNotFound_ScalingPolicyNotFound
            case .scheduledActionNotFound:
                code = .resourceNotFound_ScheduledActionNotFound
            case .tdmqcmqQueueNotFound:
                code = .resourceNotFound_TDMQCMQQueueNotFound
            case .tdmqcmqTopicNotFound:
                code = .resourceNotFound_TDMQCMQTopicNotFound
            }
            return TCAsError(code, context: self.context)
        }
    }
}
