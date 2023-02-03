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

extension Cvm {
    /// DescribeDisasterRecoverGroupQuota请求参数结构体
    public struct DescribeDisasterRecoverGroupQuotaRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeDisasterRecoverGroupQuota返回参数结构体
    public struct DescribeDisasterRecoverGroupQuotaResponse: TCResponseModel {
        /// 可创建置放群组数量的上限。
        public let groupQuota: Int64

        /// 当前用户已经创建的置放群组数量。
        public let currentNum: Int64

        /// 物理机类型容灾组内实例的配额数。
        public let cvmInHostGroupQuota: Int64

        /// 交换机类型容灾组内实例的配额数。
        public let cvmInSwGroupQuota: Int64

        /// 机架类型容灾组内实例的配额数。
        public let cvmInRackGroupQuota: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groupQuota = "GroupQuota"
            case currentNum = "CurrentNum"
            case cvmInHostGroupQuota = "CvmInHostGroupQuota"
            case cvmInSwGroupQuota = "CvmInSwGroupQuota"
            case cvmInRackGroupQuota = "CvmInRackGroupQuota"
            case requestId = "RequestId"
        }
    }

    /// 查询置放群组配额
    ///
    /// 本接口 (DescribeDisasterRecoverGroupQuota)用于查询[分散置放群组](https://cloud.tencent.com/document/product/213/15486)配额。
    @inlinable
    public func describeDisasterRecoverGroupQuota(_ input: DescribeDisasterRecoverGroupQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDisasterRecoverGroupQuotaResponse> {
        self.client.execute(action: "DescribeDisasterRecoverGroupQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询置放群组配额
    ///
    /// 本接口 (DescribeDisasterRecoverGroupQuota)用于查询[分散置放群组](https://cloud.tencent.com/document/product/213/15486)配额。
    @inlinable
    public func describeDisasterRecoverGroupQuota(_ input: DescribeDisasterRecoverGroupQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDisasterRecoverGroupQuotaResponse {
        try await self.client.execute(action: "DescribeDisasterRecoverGroupQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询置放群组配额
    ///
    /// 本接口 (DescribeDisasterRecoverGroupQuota)用于查询[分散置放群组](https://cloud.tencent.com/document/product/213/15486)配额。
    @inlinable
    public func describeDisasterRecoverGroupQuota(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDisasterRecoverGroupQuotaResponse> {
        let input = DescribeDisasterRecoverGroupQuotaRequest()
        return self.client.execute(action: "DescribeDisasterRecoverGroupQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询置放群组配额
    ///
    /// 本接口 (DescribeDisasterRecoverGroupQuota)用于查询[分散置放群组](https://cloud.tencent.com/document/product/213/15486)配额。
    @inlinable
    public func describeDisasterRecoverGroupQuota(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDisasterRecoverGroupQuotaResponse {
        let input = DescribeDisasterRecoverGroupQuotaRequest()
        return try await self.client.execute(action: "DescribeDisasterRecoverGroupQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
