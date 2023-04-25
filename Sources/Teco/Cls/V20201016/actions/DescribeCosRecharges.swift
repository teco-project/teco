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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cls {
    /// DescribeCosRecharges请求参数结构体
    public struct DescribeCosRechargesRequest: TCRequestModel {
        /// 日志主题 ID
        public let topicId: String

        /// 状态   status 0: 已创建, 1: 运行中, 2: 已停止, 3: 已完成, 4: 运行失败。
        public let status: UInt64?

        /// 是否启用:   0： 未启用  ， 1：启用
        public let enable: UInt64?

        public init(topicId: String, status: UInt64? = nil, enable: UInt64? = nil) {
            self.topicId = topicId
            self.status = status
            self.enable = enable
        }

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case status = "Status"
            case enable = "Enable"
        }
    }

    /// DescribeCosRecharges返回参数结构体
    public struct DescribeCosRechargesResponse: TCResponseModel {
        /// 见: CosRechargeInfo 结构描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [CosRechargeInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取cos导入配置
    ///
    /// 本接口用于获取cos导入配置
    @inlinable
    public func describeCosRecharges(_ input: DescribeCosRechargesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCosRechargesResponse> {
        self.client.execute(action: "DescribeCosRecharges", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取cos导入配置
    ///
    /// 本接口用于获取cos导入配置
    @inlinable
    public func describeCosRecharges(_ input: DescribeCosRechargesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCosRechargesResponse {
        try await self.client.execute(action: "DescribeCosRecharges", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取cos导入配置
    ///
    /// 本接口用于获取cos导入配置
    @inlinable
    public func describeCosRecharges(topicId: String, status: UInt64? = nil, enable: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCosRechargesResponse> {
        self.describeCosRecharges(.init(topicId: topicId, status: status, enable: enable), region: region, logger: logger, on: eventLoop)
    }

    /// 获取cos导入配置
    ///
    /// 本接口用于获取cos导入配置
    @inlinable
    public func describeCosRecharges(topicId: String, status: UInt64? = nil, enable: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCosRechargesResponse {
        try await self.describeCosRecharges(.init(topicId: topicId, status: status, enable: enable), region: region, logger: logger, on: eventLoop)
    }
}
