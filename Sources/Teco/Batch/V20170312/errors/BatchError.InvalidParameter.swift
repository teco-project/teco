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

extension TCBatchError {
    public struct InvalidParameter: TCBatchErrorType {
        enum Code: String {
            case computeNodeIdMalformed = "InvalidParameter.ComputeNodeIdMalformed"
            case cvmParameters = "InvalidParameter.CvmParameters"
            case envDescriptionTooLong = "InvalidParameter.EnvDescriptionTooLong"
            case envIdMalformed = "InvalidParameter.EnvIdMalformed"
            case envNameTooLong = "InvalidParameter.EnvNameTooLong"
            case imageIdMalformed = "InvalidParameter.ImageIdMalformed"
            case invalidParameterCombination = "InvalidParameter.InvalidParameterCombination"
            case jobDescriptionTooLong = "InvalidParameter.JobDescriptionTooLong"
            case jobIdMalformed = "InvalidParameter.JobIdMalformed"
            case jobNameTooLong = "InvalidParameter.JobNameTooLong"
            case notificationEventNameDuplicate = "InvalidParameter.NotificationEventNameDuplicate"
            case notificationTopicName = "InvalidParameter.NotificationTopicName"
            case notificationTopicNameTooLong = "InvalidParameter.NotificationTopicNameTooLong"
            case taskName = "InvalidParameter.TaskName"
            case taskNameTooLong = "InvalidParameter.TaskNameTooLong"
            case taskTemplateDescriptionTooLong = "InvalidParameter.TaskTemplateDescriptionTooLong"
            case taskTemplateIdMalformed = "InvalidParameter.TaskTemplateIdMalformed"
            case taskTemplateName = "InvalidParameter.TaskTemplateName"
            case taskTemplateNameTooLong = "InvalidParameter.TaskTemplateNameTooLong"
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

        /// 非法的计算节点ID格式。
        public static var computeNodeIdMalformed: InvalidParameter {
            InvalidParameter(.computeNodeIdMalformed)
        }

        /// 非法的CVM参数。
        public static var cvmParameters: InvalidParameter {
            InvalidParameter(.cvmParameters)
        }

        /// 计算环境描述过长。
        public static var envDescriptionTooLong: InvalidParameter {
            InvalidParameter(.envDescriptionTooLong)
        }

        /// 非法的计算环境ID格式。
        public static var envIdMalformed: InvalidParameter {
            InvalidParameter(.envIdMalformed)
        }

        /// 计算环境名称过长。
        public static var envNameTooLong: InvalidParameter {
            InvalidParameter(.envNameTooLong)
        }

        /// 镜像ID不正确。
        public static var imageIdMalformed: InvalidParameter {
            InvalidParameter(.imageIdMalformed)
        }

        /// 非法的参数组合。
        public static var invalidParameterCombination: InvalidParameter {
            InvalidParameter(.invalidParameterCombination)
        }

        /// 作业描述过长。
        public static var jobDescriptionTooLong: InvalidParameter {
            InvalidParameter(.jobDescriptionTooLong)
        }

        /// 非法的作业ID格式。
        public static var jobIdMalformed: InvalidParameter {
            InvalidParameter(.jobIdMalformed)
        }

        /// 作业名称过长。
        public static var jobNameTooLong: InvalidParameter {
            InvalidParameter(.jobNameTooLong)
        }

        /// 重复的消息通知事件名称。
        public static var notificationEventNameDuplicate: InvalidParameter {
            InvalidParameter(.notificationEventNameDuplicate)
        }

        /// 非法的主题名称。
        public static var notificationTopicName: InvalidParameter {
            InvalidParameter(.notificationTopicName)
        }

        /// 主题名称过长。
        public static var notificationTopicNameTooLong: InvalidParameter {
            InvalidParameter(.notificationTopicNameTooLong)
        }

        /// 非法的任务名称。
        public static var taskName: InvalidParameter {
            InvalidParameter(.taskName)
        }

        /// 任务名称过长。
        public static var taskNameTooLong: InvalidParameter {
            InvalidParameter(.taskNameTooLong)
        }

        /// 任务模板描述过长。
        public static var taskTemplateDescriptionTooLong: InvalidParameter {
            InvalidParameter(.taskTemplateDescriptionTooLong)
        }

        /// 非法的任务模板ID格式。
        public static var taskTemplateIdMalformed: InvalidParameter {
            InvalidParameter(.taskTemplateIdMalformed)
        }

        /// 非法的任务模板名称。
        public static var taskTemplateName: InvalidParameter {
            InvalidParameter(.taskTemplateName)
        }

        /// 任务模板名称过长。
        public static var taskTemplateNameTooLong: InvalidParameter {
            InvalidParameter(.taskTemplateNameTooLong)
        }

        public func asBatchError() -> TCBatchError {
            let code: TCBatchError.Code
            switch self.error {
            case .computeNodeIdMalformed:
                code = .invalidParameter_ComputeNodeIdMalformed
            case .cvmParameters:
                code = .invalidParameter_CvmParameters
            case .envDescriptionTooLong:
                code = .invalidParameter_EnvDescriptionTooLong
            case .envIdMalformed:
                code = .invalidParameter_EnvIdMalformed
            case .envNameTooLong:
                code = .invalidParameter_EnvNameTooLong
            case .imageIdMalformed:
                code = .invalidParameter_ImageIdMalformed
            case .invalidParameterCombination:
                code = .invalidParameter_InvalidParameterCombination
            case .jobDescriptionTooLong:
                code = .invalidParameter_JobDescriptionTooLong
            case .jobIdMalformed:
                code = .invalidParameter_JobIdMalformed
            case .jobNameTooLong:
                code = .invalidParameter_JobNameTooLong
            case .notificationEventNameDuplicate:
                code = .invalidParameter_NotificationEventNameDuplicate
            case .notificationTopicName:
                code = .invalidParameter_NotificationTopicName
            case .notificationTopicNameTooLong:
                code = .invalidParameter_NotificationTopicNameTooLong
            case .taskName:
                code = .invalidParameter_TaskName
            case .taskNameTooLong:
                code = .invalidParameter_TaskNameTooLong
            case .taskTemplateDescriptionTooLong:
                code = .invalidParameter_TaskTemplateDescriptionTooLong
            case .taskTemplateIdMalformed:
                code = .invalidParameter_TaskTemplateIdMalformed
            case .taskTemplateName:
                code = .invalidParameter_TaskTemplateName
            case .taskTemplateNameTooLong:
                code = .invalidParameter_TaskTemplateNameTooLong
            }
            return TCBatchError(code, context: self.context)
        }
    }
}
