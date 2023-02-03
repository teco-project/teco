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
    /// ModifyCcBlackWhiteIpList请求参数结构体
    public struct ModifyCcBlackWhiteIpListRequest: TCRequestModel {
        /// 资源实例ID
        public let instanceId: String

        /// IP列表
        public let ipList: [IpSegment]

        /// IP类型，取值[black(黑名单IP), white(白名单IP)]
        public let type: String

        /// 策略Id
        public let policyId: String

        public init(instanceId: String, ipList: [IpSegment], type: String, policyId: String) {
            self.instanceId = instanceId
            self.ipList = ipList
            self.type = type
            self.policyId = policyId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case ipList = "IpList"
            case type = "Type"
            case policyId = "PolicyId"
        }
    }

    /// ModifyCcBlackWhiteIpList返回参数结构体
    public struct ModifyCcBlackWhiteIpListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改CC四层黑白名单
    @inlinable @discardableResult
    public func modifyCcBlackWhiteIpList(_ input: ModifyCcBlackWhiteIpListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCcBlackWhiteIpListResponse> {
        self.client.execute(action: "ModifyCcBlackWhiteIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改CC四层黑白名单
    @inlinable @discardableResult
    public func modifyCcBlackWhiteIpList(_ input: ModifyCcBlackWhiteIpListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCcBlackWhiteIpListResponse {
        try await self.client.execute(action: "ModifyCcBlackWhiteIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改CC四层黑白名单
    @inlinable @discardableResult
    public func modifyCcBlackWhiteIpList(instanceId: String, ipList: [IpSegment], type: String, policyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCcBlackWhiteIpListResponse> {
        let input = ModifyCcBlackWhiteIpListRequest(instanceId: instanceId, ipList: ipList, type: type, policyId: policyId)
        return self.client.execute(action: "ModifyCcBlackWhiteIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改CC四层黑白名单
    @inlinable @discardableResult
    public func modifyCcBlackWhiteIpList(instanceId: String, ipList: [IpSegment], type: String, policyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCcBlackWhiteIpListResponse {
        let input = ModifyCcBlackWhiteIpListRequest(instanceId: instanceId, ipList: ipList, type: type, policyId: policyId)
        return try await self.client.execute(action: "ModifyCcBlackWhiteIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
