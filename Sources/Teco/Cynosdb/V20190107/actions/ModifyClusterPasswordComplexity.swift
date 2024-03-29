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
    /// ModifyClusterPasswordComplexity请求参数结构体
    public struct ModifyClusterPasswordComplexityRequest: TCRequest {
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

    /// ModifyClusterPasswordComplexity返回参数结构体
    public struct ModifyClusterPasswordComplexityResponse: TCResponse {
        /// 任务流ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 修改集群密码复杂度
    ///
    /// 本接口（ModifyClusterPasswordComplexity）用于修改/开启集群密码复杂度
    @inlinable
    public func modifyClusterPasswordComplexity(_ input: ModifyClusterPasswordComplexityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterPasswordComplexityResponse> {
        self.client.execute(action: "ModifyClusterPasswordComplexity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改集群密码复杂度
    ///
    /// 本接口（ModifyClusterPasswordComplexity）用于修改/开启集群密码复杂度
    @inlinable
    public func modifyClusterPasswordComplexity(_ input: ModifyClusterPasswordComplexityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterPasswordComplexityResponse {
        try await self.client.execute(action: "ModifyClusterPasswordComplexity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改集群密码复杂度
    ///
    /// 本接口（ModifyClusterPasswordComplexity）用于修改/开启集群密码复杂度
    @inlinable
    public func modifyClusterPasswordComplexity(clusterId: String, validatePasswordLength: Int64, validatePasswordMixedCaseCount: Int64, validatePasswordSpecialCharCount: Int64, validatePasswordNumberCount: Int64, validatePasswordPolicy: String, validatePasswordDictionary: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterPasswordComplexityResponse> {
        self.modifyClusterPasswordComplexity(.init(clusterId: clusterId, validatePasswordLength: validatePasswordLength, validatePasswordMixedCaseCount: validatePasswordMixedCaseCount, validatePasswordSpecialCharCount: validatePasswordSpecialCharCount, validatePasswordNumberCount: validatePasswordNumberCount, validatePasswordPolicy: validatePasswordPolicy, validatePasswordDictionary: validatePasswordDictionary), region: region, logger: logger, on: eventLoop)
    }

    /// 修改集群密码复杂度
    ///
    /// 本接口（ModifyClusterPasswordComplexity）用于修改/开启集群密码复杂度
    @inlinable
    public func modifyClusterPasswordComplexity(clusterId: String, validatePasswordLength: Int64, validatePasswordMixedCaseCount: Int64, validatePasswordSpecialCharCount: Int64, validatePasswordNumberCount: Int64, validatePasswordPolicy: String, validatePasswordDictionary: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterPasswordComplexityResponse {
        try await self.modifyClusterPasswordComplexity(.init(clusterId: clusterId, validatePasswordLength: validatePasswordLength, validatePasswordMixedCaseCount: validatePasswordMixedCaseCount, validatePasswordSpecialCharCount: validatePasswordSpecialCharCount, validatePasswordNumberCount: validatePasswordNumberCount, validatePasswordPolicy: validatePasswordPolicy, validatePasswordDictionary: validatePasswordDictionary), region: region, logger: logger, on: eventLoop)
    }
}
