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

extension Dts {
    /// ModifySubscribeVipVport请求参数结构体
    public struct ModifySubscribeVipVportRequest: TCRequestModel {
        /// 数据订阅实例的ID
        public let subscribeId: String

        /// 指定目的子网，如果传此参数，DstIp必须在目的子网内
        public let dstUniqSubnetId: String?

        /// 目标IP，与DstPort至少传一个
        public let dstIp: String?

        /// 目标PORT，支持范围为：[1025-65535]
        public let dstPort: Int64?

        public init(subscribeId: String, dstUniqSubnetId: String? = nil, dstIp: String? = nil, dstPort: Int64? = nil) {
            self.subscribeId = subscribeId
            self.dstUniqSubnetId = dstUniqSubnetId
            self.dstIp = dstIp
            self.dstPort = dstPort
        }

        enum CodingKeys: String, CodingKey {
            case subscribeId = "SubscribeId"
            case dstUniqSubnetId = "DstUniqSubnetId"
            case dstIp = "DstIp"
            case dstPort = "DstPort"
        }
    }

    /// ModifySubscribeVipVport返回参数结构体
    public struct ModifySubscribeVipVportResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改数据订阅实例的IP和端口号
    ///
    /// 本接口(ModifySubscribeVipVport)用于修改数据订阅实例的IP和端口号
    @inlinable @discardableResult
    public func modifySubscribeVipVport(_ input: ModifySubscribeVipVportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubscribeVipVportResponse> {
        self.client.execute(action: "ModifySubscribeVipVport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改数据订阅实例的IP和端口号
    ///
    /// 本接口(ModifySubscribeVipVport)用于修改数据订阅实例的IP和端口号
    @inlinable @discardableResult
    public func modifySubscribeVipVport(_ input: ModifySubscribeVipVportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubscribeVipVportResponse {
        try await self.client.execute(action: "ModifySubscribeVipVport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改数据订阅实例的IP和端口号
    ///
    /// 本接口(ModifySubscribeVipVport)用于修改数据订阅实例的IP和端口号
    @inlinable @discardableResult
    public func modifySubscribeVipVport(subscribeId: String, dstUniqSubnetId: String? = nil, dstIp: String? = nil, dstPort: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubscribeVipVportResponse> {
        let input = ModifySubscribeVipVportRequest(subscribeId: subscribeId, dstUniqSubnetId: dstUniqSubnetId, dstIp: dstIp, dstPort: dstPort)
        return self.client.execute(action: "ModifySubscribeVipVport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改数据订阅实例的IP和端口号
    ///
    /// 本接口(ModifySubscribeVipVport)用于修改数据订阅实例的IP和端口号
    @inlinable @discardableResult
    public func modifySubscribeVipVport(subscribeId: String, dstUniqSubnetId: String? = nil, dstIp: String? = nil, dstPort: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubscribeVipVportResponse {
        let input = ModifySubscribeVipVportRequest(subscribeId: subscribeId, dstUniqSubnetId: dstUniqSubnetId, dstIp: dstIp, dstPort: dstPort)
        return try await self.client.execute(action: "ModifySubscribeVipVport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
