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

extension Clb {
    /// ModifyBlockIPList请求参数结构体
    public struct ModifyBlockIPListRequest: TCRequest {
        /// 负载均衡实例ID
        public let loadBalancerIds: [String]

        /// 操作类型，可取：
        /// - add_customized_field（首次设置header，开启黑名单功能）
        /// - set_customized_field（修改header）
        /// - del_customized_field（删除header）
        /// - add_blocked（添加黑名单）
        /// - del_blocked（删除黑名单）
        /// - flush_blocked（清空黑名单）
        public let type: String

        /// 客户端真实IP存放的header字段名
        public let clientIPField: String

        /// 封禁IP列表，单次操作数组最大长度支持200000
        public let blockIPList: [String]?

        /// 过期时间，单位秒，默认值3600
        public let expireTime: UInt64?

        /// 添加IP的策略，可取：fifo（如果黑名单容量已满，新加入黑名单的IP采用先进先出策略）
        public let addStrategy: String?

        public init(loadBalancerIds: [String], type: String, clientIPField: String, blockIPList: [String]? = nil, expireTime: UInt64? = nil, addStrategy: String? = nil) {
            self.loadBalancerIds = loadBalancerIds
            self.type = type
            self.clientIPField = clientIPField
            self.blockIPList = blockIPList
            self.expireTime = expireTime
            self.addStrategy = addStrategy
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerIds = "LoadBalancerIds"
            case type = "Type"
            case clientIPField = "ClientIPField"
            case blockIPList = "BlockIPList"
            case expireTime = "ExpireTime"
            case addStrategy = "AddStrategy"
        }
    }

    /// ModifyBlockIPList返回参数结构体
    public struct ModifyBlockIPListResponse: TCResponse {
        /// 异步任务的ID
        public let jodId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jodId = "JodId"
            case requestId = "RequestId"
        }
    }

    /// 修改负载均衡的IP封禁黑名单列表
    ///
    /// 修改负载均衡的IP（client IP）封禁黑名单列表，一个转发规则最多支持封禁 2000000 个IP，及黑名单容量为 2000000。
    /// （接口灰度中，如需使用请提工单）
    @inlinable
    public func modifyBlockIPList(_ input: ModifyBlockIPListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBlockIPListResponse> {
        self.client.execute(action: "ModifyBlockIPList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改负载均衡的IP封禁黑名单列表
    ///
    /// 修改负载均衡的IP（client IP）封禁黑名单列表，一个转发规则最多支持封禁 2000000 个IP，及黑名单容量为 2000000。
    /// （接口灰度中，如需使用请提工单）
    @inlinable
    public func modifyBlockIPList(_ input: ModifyBlockIPListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBlockIPListResponse {
        try await self.client.execute(action: "ModifyBlockIPList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改负载均衡的IP封禁黑名单列表
    ///
    /// 修改负载均衡的IP（client IP）封禁黑名单列表，一个转发规则最多支持封禁 2000000 个IP，及黑名单容量为 2000000。
    /// （接口灰度中，如需使用请提工单）
    @inlinable
    public func modifyBlockIPList(loadBalancerIds: [String], type: String, clientIPField: String, blockIPList: [String]? = nil, expireTime: UInt64? = nil, addStrategy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBlockIPListResponse> {
        self.modifyBlockIPList(.init(loadBalancerIds: loadBalancerIds, type: type, clientIPField: clientIPField, blockIPList: blockIPList, expireTime: expireTime, addStrategy: addStrategy), region: region, logger: logger, on: eventLoop)
    }

    /// 修改负载均衡的IP封禁黑名单列表
    ///
    /// 修改负载均衡的IP（client IP）封禁黑名单列表，一个转发规则最多支持封禁 2000000 个IP，及黑名单容量为 2000000。
    /// （接口灰度中，如需使用请提工单）
    @inlinable
    public func modifyBlockIPList(loadBalancerIds: [String], type: String, clientIPField: String, blockIPList: [String]? = nil, expireTime: UInt64? = nil, addStrategy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBlockIPListResponse {
        try await self.modifyBlockIPList(.init(loadBalancerIds: loadBalancerIds, type: type, clientIPField: clientIPField, blockIPList: blockIPList, expireTime: expireTime, addStrategy: addStrategy), region: region, logger: logger, on: eventLoop)
    }
}
