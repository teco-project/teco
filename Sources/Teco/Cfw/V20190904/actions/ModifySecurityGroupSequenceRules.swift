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

extension Cfw {
    /// ModifySecurityGroupSequenceRules请求参数结构体
    public struct ModifySecurityGroupSequenceRulesRequest: TCRequestModel {
        /// 方向，0：出站，1：入站，默认1
        public let direction: UInt64

        /// 企业安全组规则快速排序数据
        public let data: [SecurityGroupOrderIndexData]

        public init(direction: UInt64, data: [SecurityGroupOrderIndexData]) {
            self.direction = direction
            self.data = data
        }

        enum CodingKeys: String, CodingKey {
            case direction = "Direction"
            case data = "Data"
        }
    }

    /// ModifySecurityGroupSequenceRules返回参数结构体
    public struct ModifySecurityGroupSequenceRulesResponse: TCResponseModel {
        /// 状态值，0：修改成功，非0：修改失败
        public let status: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 企业安全组规则快速排序
    @inlinable
    public func modifySecurityGroupSequenceRules(_ input: ModifySecurityGroupSequenceRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecurityGroupSequenceRulesResponse> {
        self.client.execute(action: "ModifySecurityGroupSequenceRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 企业安全组规则快速排序
    @inlinable
    public func modifySecurityGroupSequenceRules(_ input: ModifySecurityGroupSequenceRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecurityGroupSequenceRulesResponse {
        try await self.client.execute(action: "ModifySecurityGroupSequenceRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 企业安全组规则快速排序
    @inlinable
    public func modifySecurityGroupSequenceRules(direction: UInt64, data: [SecurityGroupOrderIndexData], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecurityGroupSequenceRulesResponse> {
        self.modifySecurityGroupSequenceRules(.init(direction: direction, data: data), region: region, logger: logger, on: eventLoop)
    }

    /// 企业安全组规则快速排序
    @inlinable
    public func modifySecurityGroupSequenceRules(direction: UInt64, data: [SecurityGroupOrderIndexData], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecurityGroupSequenceRulesResponse {
        try await self.modifySecurityGroupSequenceRules(.init(direction: direction, data: data), region: region, logger: logger, on: eventLoop)
    }
}
