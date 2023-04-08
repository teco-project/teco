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

extension Tcss {
    /// DescribeProVersionInfo请求参数结构体
    public struct DescribeProVersionInfoRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeProVersionInfo返回参数结构体
    public struct DescribeProVersionInfoResponse: TCResponseModel {
        /// 专业版开始时间，补充购买时才不为空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let startTime: String?

        /// 专业版结束时间，补充购买时才不为空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let endTime: String?

        /// 需购买的机器核数
        public let coresCnt: UInt64

        /// 弹性计费上限
        public let maxPostPayCoresCnt: UInt64

        /// 资源ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceId: String?

        /// 购买状态
        /// 待购: Pending
        /// 已购: Normal
        /// 隔离: Isolate
        public let buyStatus: String

        /// 是否曾经购买过(false:未曾 true:曾经购买过)
        public let isPurchased: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case coresCnt = "CoresCnt"
            case maxPostPayCoresCnt = "MaxPostPayCoresCnt"
            case resourceId = "ResourceId"
            case buyStatus = "BuyStatus"
            case isPurchased = "IsPurchased"
            case requestId = "RequestId"
        }
    }

    /// 查询专业版需购买信息
    ///
    /// DescribeProVersionInfo  查询专业版需购买信息
    @inlinable
    public func describeProVersionInfo(_ input: DescribeProVersionInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProVersionInfoResponse> {
        self.client.execute(action: "DescribeProVersionInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询专业版需购买信息
    ///
    /// DescribeProVersionInfo  查询专业版需购买信息
    @inlinable
    public func describeProVersionInfo(_ input: DescribeProVersionInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProVersionInfoResponse {
        try await self.client.execute(action: "DescribeProVersionInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询专业版需购买信息
    ///
    /// DescribeProVersionInfo  查询专业版需购买信息
    @inlinable
    public func describeProVersionInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProVersionInfoResponse> {
        self.describeProVersionInfo(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询专业版需购买信息
    ///
    /// DescribeProVersionInfo  查询专业版需购买信息
    @inlinable
    public func describeProVersionInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProVersionInfoResponse {
        try await self.describeProVersionInfo(.init(), region: region, logger: logger, on: eventLoop)
    }
}
