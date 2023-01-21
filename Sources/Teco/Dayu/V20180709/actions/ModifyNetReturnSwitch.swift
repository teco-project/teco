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
    /// ModifyNetReturnSwitch请求参数结构体
    public struct ModifyNetReturnSwitchRequest: TCRequestModel {
        /// 大禹子产品代号（net表示高防IP专业版）
        public let business: String

        /// 资源实例ID
        public let id: String

        /// Status 表示回切开关，0: 关闭， 1:打开
        public let status: UInt64

        /// 回切时长，单位：小时，取值[0,1,2,3,4,5,6;]当status=1时必选填写Hour>0
        public let hour: UInt64

        public init(business: String, id: String, status: UInt64, hour: UInt64) {
            self.business = business
            self.id = id
            self.status = status
            self.hour = hour
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case status = "Status"
            case hour = "Hour"
        }
    }

    /// ModifyNetReturnSwitch返回参数结构体
    public struct ModifyNetReturnSwitchResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置自动切回
    ///
    /// 在客户收攻击或者被封堵时，切回到源站，并设置回切的时长
    @inlinable @discardableResult
    public func modifyNetReturnSwitch(_ input: ModifyNetReturnSwitchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNetReturnSwitchResponse> {
        self.client.execute(action: "ModifyNetReturnSwitch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置自动切回
    ///
    /// 在客户收攻击或者被封堵时，切回到源站，并设置回切的时长
    @inlinable @discardableResult
    public func modifyNetReturnSwitch(_ input: ModifyNetReturnSwitchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNetReturnSwitchResponse {
        try await self.client.execute(action: "ModifyNetReturnSwitch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置自动切回
    ///
    /// 在客户收攻击或者被封堵时，切回到源站，并设置回切的时长
    @inlinable @discardableResult
    public func modifyNetReturnSwitch(business: String, id: String, status: UInt64, hour: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNetReturnSwitchResponse> {
        self.modifyNetReturnSwitch(ModifyNetReturnSwitchRequest(business: business, id: id, status: status, hour: hour), region: region, logger: logger, on: eventLoop)
    }

    /// 设置自动切回
    ///
    /// 在客户收攻击或者被封堵时，切回到源站，并设置回切的时长
    @inlinable @discardableResult
    public func modifyNetReturnSwitch(business: String, id: String, status: UInt64, hour: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNetReturnSwitchResponse {
        try await self.modifyNetReturnSwitch(ModifyNetReturnSwitchRequest(business: business, id: id, status: status, hour: hour), region: region, logger: logger, on: eventLoop)
    }
}
