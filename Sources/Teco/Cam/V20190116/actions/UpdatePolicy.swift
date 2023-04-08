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

extension Cam {
    /// UpdatePolicy请求参数结构体
    public struct UpdatePolicyRequest: TCRequestModel {
        /// 策略ID，与PolicyName二选一必填
        public let policyId: UInt64?

        /// 策略名，与PolicyId二选一必填
        public let policyName: String?

        /// 策略描述
        public let description: String?

        /// 策略文档，示例：{"version":"2.0","statement":[{"action":"name/sts:AssumeRole","effect":"allow","principal":{"service":["cloudaudit.cloud.tencent.com","cls.cloud.tencent.com"]}}]}，principal用于指定角色的授权对象。获取该参数可参阅 获取角色详情（https://cloud.tencent.com/document/product/598/36221） 输出参数RoleInfo
        public let policyDocument: String?

        /// 预设策略备注
        public let alias: String?

        public init(policyId: UInt64? = nil, policyName: String? = nil, description: String? = nil, policyDocument: String? = nil, alias: String? = nil) {
            self.policyId = policyId
            self.policyName = policyName
            self.description = description
            self.policyDocument = policyDocument
            self.alias = alias
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case policyName = "PolicyName"
            case description = "Description"
            case policyDocument = "PolicyDocument"
            case alias = "Alias"
        }
    }

    /// UpdatePolicy返回参数结构体
    public struct UpdatePolicyResponse: TCResponseModel {
        /// 策略id，入参是PolicyName时，才会返回
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyId: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case requestId = "RequestId"
        }
    }

    /// 更新策略信息
    ///
    /// 本接口（UpdatePolicy ）可用于更新策略。
    /// 如果已存在策略版本，本接口会直接更新策略的默认版本，不会创建新版本，如果不存在任何策略版本，则直接创建一个默认版本。
    @inlinable
    public func updatePolicy(_ input: UpdatePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePolicyResponse> {
        self.client.execute(action: "UpdatePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新策略信息
    ///
    /// 本接口（UpdatePolicy ）可用于更新策略。
    /// 如果已存在策略版本，本接口会直接更新策略的默认版本，不会创建新版本，如果不存在任何策略版本，则直接创建一个默认版本。
    @inlinable
    public func updatePolicy(_ input: UpdatePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePolicyResponse {
        try await self.client.execute(action: "UpdatePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新策略信息
    ///
    /// 本接口（UpdatePolicy ）可用于更新策略。
    /// 如果已存在策略版本，本接口会直接更新策略的默认版本，不会创建新版本，如果不存在任何策略版本，则直接创建一个默认版本。
    @inlinable
    public func updatePolicy(policyId: UInt64? = nil, policyName: String? = nil, description: String? = nil, policyDocument: String? = nil, alias: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePolicyResponse> {
        self.updatePolicy(.init(policyId: policyId, policyName: policyName, description: description, policyDocument: policyDocument, alias: alias), region: region, logger: logger, on: eventLoop)
    }

    /// 更新策略信息
    ///
    /// 本接口（UpdatePolicy ）可用于更新策略。
    /// 如果已存在策略版本，本接口会直接更新策略的默认版本，不会创建新版本，如果不存在任何策略版本，则直接创建一个默认版本。
    @inlinable
    public func updatePolicy(policyId: UInt64? = nil, policyName: String? = nil, description: String? = nil, policyDocument: String? = nil, alias: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePolicyResponse {
        try await self.updatePolicy(.init(policyId: policyId, policyName: policyName, description: description, policyDocument: policyDocument, alias: alias), region: region, logger: logger, on: eventLoop)
    }
}
