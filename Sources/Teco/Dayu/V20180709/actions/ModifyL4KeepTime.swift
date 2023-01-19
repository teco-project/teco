//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Dayu {
    /// ModifyL4KeepTime请求参数结构体
    public struct ModifyL4KeepTimeRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 规则ID
        public let ruleId: String

        /// 会话保持开关，取值[0(会话保持关闭)，1(会话保持开启)]
        public let keepEnable: UInt64

        /// 会话保持时间，单位秒
        public let keepTime: UInt64

        public init(business: String, id: String, ruleId: String, keepEnable: UInt64, keepTime: UInt64) {
            self.business = business
            self.id = id
            self.ruleId = ruleId
            self.keepEnable = keepEnable
            self.keepTime = keepTime
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case ruleId = "RuleId"
            case keepEnable = "KeepEnable"
            case keepTime = "KeepTime"
        }
    }

    /// ModifyL4KeepTime返回参数结构体
    public struct ModifyL4KeepTimeResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 修改L4转发规则的会话保持
    ///
    /// 修改L4转发规则的会话保持，支持的子产品：高防IP、高防IP专业版
    @inlinable
    public func modifyL4KeepTime(_ input: ModifyL4KeepTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyL4KeepTimeResponse> {
        self.client.execute(action: "ModifyL4KeepTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改L4转发规则的会话保持
    ///
    /// 修改L4转发规则的会话保持，支持的子产品：高防IP、高防IP专业版
    @inlinable
    public func modifyL4KeepTime(_ input: ModifyL4KeepTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyL4KeepTimeResponse {
        try await self.client.execute(action: "ModifyL4KeepTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改L4转发规则的会话保持
    ///
    /// 修改L4转发规则的会话保持，支持的子产品：高防IP、高防IP专业版
    @inlinable
    public func modifyL4KeepTime(business: String, id: String, ruleId: String, keepEnable: UInt64, keepTime: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyL4KeepTimeResponse> {
        self.modifyL4KeepTime(ModifyL4KeepTimeRequest(business: business, id: id, ruleId: ruleId, keepEnable: keepEnable, keepTime: keepTime), region: region, logger: logger, on: eventLoop)
    }

    /// 修改L4转发规则的会话保持
    ///
    /// 修改L4转发规则的会话保持，支持的子产品：高防IP、高防IP专业版
    @inlinable
    public func modifyL4KeepTime(business: String, id: String, ruleId: String, keepEnable: UInt64, keepTime: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyL4KeepTimeResponse {
        try await self.modifyL4KeepTime(ModifyL4KeepTimeRequest(business: business, id: id, ruleId: ruleId, keepEnable: keepEnable, keepTime: keepTime), region: region, logger: logger, on: eventLoop)
    }
}
