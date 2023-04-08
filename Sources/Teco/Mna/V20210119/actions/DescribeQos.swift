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

extension Mna {
    /// DescribeQos请求参数结构体
    public struct DescribeQosRequest: TCRequestModel {
        /// 单次加速唯一 Id
        public let sessionId: String

        public init(sessionId: String) {
            self.sessionId = sessionId
        }

        enum CodingKeys: String, CodingKey {
            case sessionId = "SessionId"
        }
    }

    /// DescribeQos返回参数结构体
    public struct DescribeQosResponse: TCResponseModel {
        /// 0：无匹配的加速中会话
        /// 1：存在匹配的加速中会话
        public let status: UInt64

        /// 手机公网出口IP，仅匹配时返回
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let srcPublicIpv4: String?

        /// 业务访问目的IP，仅匹配时返回
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let destIpv4: [String]?

        /// 当前加速剩余时长（单位秒）有，仅匹配时返回
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let duration: UInt64?

        /// 加速套餐类型，仅匹配时返回
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let qosMenu: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case srcPublicIpv4 = "SrcPublicIpv4"
            case destIpv4 = "DestIpv4"
            case duration = "Duration"
            case qosMenu = "QosMenu"
            case requestId = "RequestId"
        }
    }

    /// 获取Qos加速状态
    @inlinable
    public func describeQos(_ input: DescribeQosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQosResponse> {
        self.client.execute(action: "DescribeQos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Qos加速状态
    @inlinable
    public func describeQos(_ input: DescribeQosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQosResponse {
        try await self.client.execute(action: "DescribeQos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Qos加速状态
    @inlinable
    public func describeQos(sessionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQosResponse> {
        self.describeQos(.init(sessionId: sessionId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取Qos加速状态
    @inlinable
    public func describeQos(sessionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQosResponse {
        try await self.describeQos(.init(sessionId: sessionId), region: region, logger: logger, on: eventLoop)
    }
}
