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

extension TCTsfError {
    public struct MissingParameter: TCTsfErrorType {
        enum Code: String {
            case applicationIdNull = "MissingParameter.ApplicationIdNull"
            case applicationIdRequired = "MissingParameter.ApplicationIdRequired"
            case applicationTypeNull = "MissingParameter.ApplicationTypeNull"
            case clusterIdRequired = "MissingParameter.ClusterIdRequired"
            case clusterSubnetRequired = "MissingParameter.ClusterSubnetRequired"
            case configIdRequired = "MissingParameter.ConfigIdRequired"
            case configNameRequired = "MissingParameter.ConfigNameRequired"
            case configReleaseIdRequired = "MissingParameter.ConfigReleaseIdRequired"
            case configTemplateIdRequired = "MissingParameter.ConfigTemplateIdRequired"
            case configTemplateNameRequired = "MissingParameter.ConfigTemplateNameRequired"
            case configTemplateTypeRequired = "MissingParameter.ConfigTemplateTypeRequired"
            case configTypeRequired = "MissingParameter.ConfigTypeRequired"
            case configValueRequired = "MissingParameter.ConfigValueRequired"
            case configVersionRequired = "MissingParameter.ConfigVersionRequired"
            case fileConfigFileValueRequired = "MissingParameter.FileConfigFileValueRequired"
            case gatewayParameterRequired = "MissingParameter.GatewayParameterRequired"
            case groupApplicationNull = "MissingParameter.GroupApplicationNull"
            case groupExpandServeridNull = "MissingParameter.GroupExpandServeridNull"
            case groupIdNull = "MissingParameter.GroupIdNull"
            case groupIdRequired = "MissingParameter.GroupIdRequired"
            case groupNamespaceNull = "MissingParameter.GroupNamespaceNull"
            case groupShirkServeridNull = "MissingParameter.GroupShirkServeridNull"
            case instanceImportModeNull = "MissingParameter.InstanceImportModeNull"
            case namespaceIdRequired = "MissingParameter.NamespaceIdRequired"
            case requiredParameterMissing = "MissingParameter.RequiredParameterMissing"
            case serviceIdRequired = "MissingParameter.ServiceIdRequired"
            case systemParameterRequired = "MissingParameter.SystemParameterRequired"
            case taskParameterMissed = "MissingParameter.TaskParameterMissed"
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

        /// 应用ID不能为空。
        public static var applicationIdNull: MissingParameter {
            MissingParameter(.applicationIdNull)
        }

        /// 应用ID未填写。
        public static var applicationIdRequired: MissingParameter {
            MissingParameter(.applicationIdRequired)
        }

        /// 应用类型不能为空。
        public static var applicationTypeNull: MissingParameter {
            MissingParameter(.applicationTypeNull)
        }

        /// 集群ID未填写。
        public static var clusterIdRequired: MissingParameter {
            MissingParameter(.clusterIdRequired)
        }

        /// 集群所属子网不能为空。
        public static var clusterSubnetRequired: MissingParameter {
            MissingParameter(.clusterSubnetRequired)
        }

        /// 配置项ID未填写。
        public static var configIdRequired: MissingParameter {
            MissingParameter(.configIdRequired)
        }

        /// 配置项名称未填写。
        public static var configNameRequired: MissingParameter {
            MissingParameter(.configNameRequired)
        }

        /// 配置项发布信息ID未填写。
        public static var configReleaseIdRequired: MissingParameter {
            MissingParameter(.configReleaseIdRequired)
        }

        /// 缺少配置模板id。
        public static var configTemplateIdRequired: MissingParameter {
            MissingParameter(.configTemplateIdRequired)
        }

        /// 配置模板名称未填写。
        public static var configTemplateNameRequired: MissingParameter {
            MissingParameter(.configTemplateNameRequired)
        }

        /// 配置模板类型未填写。
        public static var configTemplateTypeRequired: MissingParameter {
            MissingParameter(.configTemplateTypeRequired)
        }

        /// 配置项类型未填写。
        public static var configTypeRequired: MissingParameter {
            MissingParameter(.configTypeRequired)
        }

        /// 配置项值未填写。
        public static var configValueRequired: MissingParameter {
            MissingParameter(.configValueRequired)
        }

        /// 配置项版本未填写。
        public static var configVersionRequired: MissingParameter {
            MissingParameter(.configVersionRequired)
        }

        /// 文件配置项文件内容未填写。
        public static var fileConfigFileValueRequired: MissingParameter {
            MissingParameter(.fileConfigFileValueRequired)
        }

        /// 缺少请求参数:%s。
        public static var gatewayParameterRequired: MissingParameter {
            MissingParameter(.gatewayParameterRequired)
        }

        /// 分组所属应用不能为空。
        public static var groupApplicationNull: MissingParameter {
            MissingParameter(.groupApplicationNull)
        }

        /// 分组扩容操作，机器列表为空。
        public static var groupExpandServeridNull: MissingParameter {
            MissingParameter(.groupExpandServeridNull)
        }

        /// 分组ID不能为空。
        public static var groupIdNull: MissingParameter {
            MissingParameter(.groupIdNull)
        }

        /// 部署组ID未填写。
        public static var groupIdRequired: MissingParameter {
            MissingParameter(.groupIdRequired)
        }

        /// 分组所属命名空间不能为空。
        public static var groupNamespaceNull: MissingParameter {
            MissingParameter(.groupNamespaceNull)
        }

        /// 分组缩容操作，机器列表为空。
        public static var groupShirkServeridNull: MissingParameter {
            MissingParameter(.groupShirkServeridNull)
        }

        /// 虚拟机集群导入云主机导入方式为空。
        public static var instanceImportModeNull: MissingParameter {
            MissingParameter(.instanceImportModeNull)
        }

        /// 命名空间ID不能为空。
        public static var namespaceIdRequired: MissingParameter {
            MissingParameter(.namespaceIdRequired)
        }

        /// %s缺失。
        public static var requiredParameterMissing: MissingParameter {
            MissingParameter(.requiredParameterMissing)
        }

        /// 未填写服务Id。
        public static var serviceIdRequired: MissingParameter {
            MissingParameter(.serviceIdRequired)
        }

        /// 未指定%s。。
        public static var systemParameterRequired: MissingParameter {
            MissingParameter(.systemParameterRequired)
        }

        /// 缺少必填参数。
        public static var taskParameterMissed: MissingParameter {
            MissingParameter(.taskParameterMissed)
        }

        public func asTsfError() -> TCTsfError {
            let code: TCTsfError.Code
            switch self.error {
            case .applicationIdNull:
                code = .missingParameter_ApplicationIdNull
            case .applicationIdRequired:
                code = .missingParameter_ApplicationIdRequired
            case .applicationTypeNull:
                code = .missingParameter_ApplicationTypeNull
            case .clusterIdRequired:
                code = .missingParameter_ClusterIdRequired
            case .clusterSubnetRequired:
                code = .missingParameter_ClusterSubnetRequired
            case .configIdRequired:
                code = .missingParameter_ConfigIdRequired
            case .configNameRequired:
                code = .missingParameter_ConfigNameRequired
            case .configReleaseIdRequired:
                code = .missingParameter_ConfigReleaseIdRequired
            case .configTemplateIdRequired:
                code = .missingParameter_ConfigTemplateIdRequired
            case .configTemplateNameRequired:
                code = .missingParameter_ConfigTemplateNameRequired
            case .configTemplateTypeRequired:
                code = .missingParameter_ConfigTemplateTypeRequired
            case .configTypeRequired:
                code = .missingParameter_ConfigTypeRequired
            case .configValueRequired:
                code = .missingParameter_ConfigValueRequired
            case .configVersionRequired:
                code = .missingParameter_ConfigVersionRequired
            case .fileConfigFileValueRequired:
                code = .missingParameter_FileConfigFileValueRequired
            case .gatewayParameterRequired:
                code = .missingParameter_GatewayParameterRequired
            case .groupApplicationNull:
                code = .missingParameter_GroupApplicationNull
            case .groupExpandServeridNull:
                code = .missingParameter_GroupExpandServeridNull
            case .groupIdNull:
                code = .missingParameter_GroupIdNull
            case .groupIdRequired:
                code = .missingParameter_GroupIdRequired
            case .groupNamespaceNull:
                code = .missingParameter_GroupNamespaceNull
            case .groupShirkServeridNull:
                code = .missingParameter_GroupShirkServeridNull
            case .instanceImportModeNull:
                code = .missingParameter_InstanceImportModeNull
            case .namespaceIdRequired:
                code = .missingParameter_NamespaceIdRequired
            case .requiredParameterMissing:
                code = .missingParameter_RequiredParameterMissing
            case .serviceIdRequired:
                code = .missingParameter_ServiceIdRequired
            case .systemParameterRequired:
                code = .missingParameter_SystemParameterRequired
            case .taskParameterMissed:
                code = .missingParameter_TaskParameterMissed
            }
            return TCTsfError(code, context: self.context)
        }
    }
}
