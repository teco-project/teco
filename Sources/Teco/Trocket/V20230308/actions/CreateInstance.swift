//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Trocket {
    /// CreateInstance请求参数结构体
    public struct CreateInstanceRequest: TCRequest {
        /// 实例类型，
        /// EXPERIMENT 体验版
        /// BASIC 基础版
        /// PRO  专业版
        /// PLATINUM 铂金版
        public let instanceType: String

        /// 实例名称
        public let name: String

        /// 商品规格，可用规格如下：
        /// experiment_500,
        /// basic_1k,
        /// basic_2k,
        /// basic_4k,
        /// basic_6k
        public let skuCode: String

        /// 备注信息
        public let remark: String?

        /// 标签列表
        public let tagList: [Tag]?

        /// 实例绑定的VPC信息
        public let vpcList: [VpcInfo]?

        /// 是否开启公网
        public let enablePublic: Bool?

        /// 公网带宽
        public let bandwidth: Int64?

        /// 公网访问白名单
        public let ipRules: [IpRule]?

        /// 消息保留时长，小时为单位
        public let messageRetention: Int64?

        public init(instanceType: String, name: String, skuCode: String, remark: String? = nil, tagList: [Tag]? = nil, vpcList: [VpcInfo]? = nil, enablePublic: Bool? = nil, bandwidth: Int64? = nil, ipRules: [IpRule]? = nil, messageRetention: Int64? = nil) {
            self.instanceType = instanceType
            self.name = name
            self.skuCode = skuCode
            self.remark = remark
            self.tagList = tagList
            self.vpcList = vpcList
            self.enablePublic = enablePublic
            self.bandwidth = bandwidth
            self.ipRules = ipRules
            self.messageRetention = messageRetention
        }

        enum CodingKeys: String, CodingKey {
            case instanceType = "InstanceType"
            case name = "Name"
            case skuCode = "SkuCode"
            case remark = "Remark"
            case tagList = "TagList"
            case vpcList = "VpcList"
            case enablePublic = "EnablePublic"
            case bandwidth = "Bandwidth"
            case ipRules = "IpRules"
            case messageRetention = "MessageRetention"
        }
    }

    /// CreateInstance返回参数结构体
    public struct CreateInstanceResponse: TCResponse {
        /// 实例ID
        public let instanceId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case requestId = "RequestId"
        }
    }

    /// 购买实例
    ///
    /// 购买新实例
    @inlinable
    public func createInstance(_ input: CreateInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstanceResponse> {
        self.client.execute(action: "CreateInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 购买实例
    ///
    /// 购买新实例
    @inlinable
    public func createInstance(_ input: CreateInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstanceResponse {
        try await self.client.execute(action: "CreateInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 购买实例
    ///
    /// 购买新实例
    @inlinable
    public func createInstance(instanceType: String, name: String, skuCode: String, remark: String? = nil, tagList: [Tag]? = nil, vpcList: [VpcInfo]? = nil, enablePublic: Bool? = nil, bandwidth: Int64? = nil, ipRules: [IpRule]? = nil, messageRetention: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstanceResponse> {
        self.createInstance(.init(instanceType: instanceType, name: name, skuCode: skuCode, remark: remark, tagList: tagList, vpcList: vpcList, enablePublic: enablePublic, bandwidth: bandwidth, ipRules: ipRules, messageRetention: messageRetention), region: region, logger: logger, on: eventLoop)
    }

    /// 购买实例
    ///
    /// 购买新实例
    @inlinable
    public func createInstance(instanceType: String, name: String, skuCode: String, remark: String? = nil, tagList: [Tag]? = nil, vpcList: [VpcInfo]? = nil, enablePublic: Bool? = nil, bandwidth: Int64? = nil, ipRules: [IpRule]? = nil, messageRetention: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstanceResponse {
        try await self.createInstance(.init(instanceType: instanceType, name: name, skuCode: skuCode, remark: remark, tagList: tagList, vpcList: vpcList, enablePublic: enablePublic, bandwidth: bandwidth, ipRules: ipRules, messageRetention: messageRetention), region: region, logger: logger, on: eventLoop)
    }
}
