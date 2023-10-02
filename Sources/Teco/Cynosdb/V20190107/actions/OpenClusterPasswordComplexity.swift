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

import Logging
import NIOCore
import TecoCore

extension Cynosdb {
    /// OpenClusterPasswordComplexity请求参数结构体
    public struct OpenClusterPasswordComplexityRequest: TCRequest {
        /// 集群id
        public let clusterId: String

        /// 密码长度
        public let validatePasswordLength: Int64

        /// 大小写字符个数
        public let validatePasswordMixedCaseCount: Int64

        /// 特殊字符个数
        public let validatePasswordSpecialCharCount: Int64

        /// 数字个数
        public let validatePasswordNumberCount: Int64

        /// 密码强度（"MEDIUM", "STRONG"）
        public let validatePasswordPolicy: String

        /// 数据字典
        public let validatePasswordDictionary: [String]?

        public init(clusterId: String, validatePasswordLength: Int64, validatePasswordMixedCaseCount: Int64, validatePasswordSpecialCharCount: Int64, validatePasswordNumberCount: Int64, validatePasswordPolicy: String, validatePasswordDictionary: [String]? = nil) {
            self.clusterId = clusterId
            self.validatePasswordLength = validatePasswordLength
            self.validatePasswordMixedCaseCount = validatePasswordMixedCaseCount
            self.validatePasswordSpecialCharCount = validatePasswordSpecialCharCount
            self.validatePasswordNumberCount = validatePasswordNumberCount
            self.validatePasswordPolicy = validatePasswordPolicy
            self.validatePasswordDictionary = validatePasswordDictionary
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case validatePasswordLength = "ValidatePasswordLength"
            case validatePasswordMixedCaseCount = "ValidatePasswordMixedCaseCount"
            case validatePasswordSpecialCharCount = "ValidatePasswordSpecialCharCount"
            case validatePasswordNumberCount = "ValidatePasswordNumberCount"
            case validatePasswordPolicy = "ValidatePasswordPolicy"
            case validatePasswordDictionary = "ValidatePasswordDictionary"
        }
    }

    /// OpenClusterPasswordComplexity返回参数结构体
    public struct OpenClusterPasswordComplexityResponse: TCResponse {
        /// 任务流ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 开启自定义密码复杂度功能
    ///
    /// 本接口（OpenClusterPasswordComplexity）用于开启自定义密码复杂度功能
    @inlinable
    public func openClusterPasswordComplexity(_ input: OpenClusterPasswordComplexityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenClusterPasswordComplexityResponse> {
        self.client.execute(action: "OpenClusterPasswordComplexity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启自定义密码复杂度功能
    ///
    /// 本接口（OpenClusterPasswordComplexity）用于开启自定义密码复杂度功能
    @inlinable
    public func openClusterPasswordComplexity(_ input: OpenClusterPasswordComplexityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenClusterPasswordComplexityResponse {
        try await self.client.execute(action: "OpenClusterPasswordComplexity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启自定义密码复杂度功能
    ///
    /// 本接口（OpenClusterPasswordComplexity）用于开启自定义密码复杂度功能
    @inlinable
    public func openClusterPasswordComplexity(clusterId: String, validatePasswordLength: Int64, validatePasswordMixedCaseCount: Int64, validatePasswordSpecialCharCount: Int64, validatePasswordNumberCount: Int64, validatePasswordPolicy: String, validatePasswordDictionary: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenClusterPasswordComplexityResponse> {
        self.openClusterPasswordComplexity(.init(clusterId: clusterId, validatePasswordLength: validatePasswordLength, validatePasswordMixedCaseCount: validatePasswordMixedCaseCount, validatePasswordSpecialCharCount: validatePasswordSpecialCharCount, validatePasswordNumberCount: validatePasswordNumberCount, validatePasswordPolicy: validatePasswordPolicy, validatePasswordDictionary: validatePasswordDictionary), region: region, logger: logger, on: eventLoop)
    }

    /// 开启自定义密码复杂度功能
    ///
    /// 本接口（OpenClusterPasswordComplexity）用于开启自定义密码复杂度功能
    @inlinable
    public func openClusterPasswordComplexity(clusterId: String, validatePasswordLength: Int64, validatePasswordMixedCaseCount: Int64, validatePasswordSpecialCharCount: Int64, validatePasswordNumberCount: Int64, validatePasswordPolicy: String, validatePasswordDictionary: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenClusterPasswordComplexityResponse {
        try await self.openClusterPasswordComplexity(.init(clusterId: clusterId, validatePasswordLength: validatePasswordLength, validatePasswordMixedCaseCount: validatePasswordMixedCaseCount, validatePasswordSpecialCharCount: validatePasswordSpecialCharCount, validatePasswordNumberCount: validatePasswordNumberCount, validatePasswordPolicy: validatePasswordPolicy, validatePasswordDictionary: validatePasswordDictionary), region: region, logger: logger, on: eventLoop)
    }
}
