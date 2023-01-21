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

extension Antiddos {
    /// ModifyDDoSBlackWhiteIpList请求参数结构体
    public struct ModifyDDoSBlackWhiteIpListRequest: TCRequestModel {
        /// 资源Id
        public let instanceId: String

        /// 当前配置的黑白名单类型，取值black时表示黑名单；取值white时表示白名单
        public let oldIpType: String

        /// 当前配置的Ip段，包含ip与掩码
        public let oldIp: IpSegment

        /// 修改后黑白名单类型，取值black时黑名单，取值white时白名单
        public let newIpType: String

        /// 当前配置的Ip段，包含ip与掩码
        public let newIp: IpSegment

        public init(instanceId: String, oldIpType: String, oldIp: IpSegment, newIpType: String, newIp: IpSegment) {
            self.instanceId = instanceId
            self.oldIpType = oldIpType
            self.oldIp = oldIp
            self.newIpType = newIpType
            self.newIp = newIp
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case oldIpType = "OldIpType"
            case oldIp = "OldIp"
            case newIpType = "NewIpType"
            case newIp = "NewIp"
        }
    }

    /// ModifyDDoSBlackWhiteIpList返回参数结构体
    public struct ModifyDDoSBlackWhiteIpListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改DDoS黑白名单列表
    @inlinable @discardableResult
    public func modifyDDoSBlackWhiteIpList(_ input: ModifyDDoSBlackWhiteIpListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDDoSBlackWhiteIpListResponse> {
        self.client.execute(action: "ModifyDDoSBlackWhiteIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改DDoS黑白名单列表
    @inlinable @discardableResult
    public func modifyDDoSBlackWhiteIpList(_ input: ModifyDDoSBlackWhiteIpListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDDoSBlackWhiteIpListResponse {
        try await self.client.execute(action: "ModifyDDoSBlackWhiteIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改DDoS黑白名单列表
    @inlinable @discardableResult
    public func modifyDDoSBlackWhiteIpList(instanceId: String, oldIpType: String, oldIp: IpSegment, newIpType: String, newIp: IpSegment, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDDoSBlackWhiteIpListResponse> {
        self.modifyDDoSBlackWhiteIpList(ModifyDDoSBlackWhiteIpListRequest(instanceId: instanceId, oldIpType: oldIpType, oldIp: oldIp, newIpType: newIpType, newIp: newIp), region: region, logger: logger, on: eventLoop)
    }

    /// 修改DDoS黑白名单列表
    @inlinable @discardableResult
    public func modifyDDoSBlackWhiteIpList(instanceId: String, oldIpType: String, oldIp: IpSegment, newIpType: String, newIp: IpSegment, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDDoSBlackWhiteIpListResponse {
        try await self.modifyDDoSBlackWhiteIpList(ModifyDDoSBlackWhiteIpListRequest(instanceId: instanceId, oldIpType: oldIpType, oldIp: oldIp, newIpType: newIpType, newIp: newIp), region: region, logger: logger, on: eventLoop)
    }
}
