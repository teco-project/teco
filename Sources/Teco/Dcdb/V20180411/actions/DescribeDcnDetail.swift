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

import TecoCore

extension Dcdb {
    /// DescribeDcnDetail请求参数结构体
    public struct DescribeDcnDetailRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeDcnDetail返回参数结构体
    public struct DescribeDcnDetailResponse: TCResponseModel {
        /// DCN同步详情
        public let dcnDetails: [DcnDetailItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dcnDetails = "DcnDetails"
            case requestId = "RequestId"
        }
    }

    /// 获取实例灾备详情
    @inlinable
    public func describeDcnDetail(_ input: DescribeDcnDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDcnDetailResponse> {
        self.client.execute(action: "DescribeDcnDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取实例灾备详情
    @inlinable
    public func describeDcnDetail(_ input: DescribeDcnDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDcnDetailResponse {
        try await self.client.execute(action: "DescribeDcnDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取实例灾备详情
    @inlinable
    public func describeDcnDetail(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDcnDetailResponse> {
        self.describeDcnDetail(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取实例灾备详情
    @inlinable
    public func describeDcnDetail(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDcnDetailResponse {
        try await self.describeDcnDetail(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
