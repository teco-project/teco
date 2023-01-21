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

extension Cwp {
    /// DescribeAssetMachineDetail请求参数结构体
    public struct DescribeAssetMachineDetailRequest: TCRequestModel {
        /// 服务器Quuid
        public let quuid: String

        /// 服务器Uuid
        public let uuid: String

        public init(quuid: String, uuid: String) {
            self.quuid = quuid
            self.uuid = uuid
        }

        enum CodingKeys: String, CodingKey {
            case quuid = "Quuid"
            case uuid = "Uuid"
        }
    }

    /// DescribeAssetMachineDetail返回参数结构体
    public struct DescribeAssetMachineDetailResponse: TCResponseModel {
        /// 主机详情
        public let machineDetail: AssetMachineDetail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case machineDetail = "MachineDetail"
            case requestId = "RequestId"
        }
    }

    /// 获取资产管理主机资源详细信息
    @inlinable
    public func describeAssetMachineDetail(_ input: DescribeAssetMachineDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetMachineDetailResponse> {
        self.client.execute(action: "DescribeAssetMachineDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取资产管理主机资源详细信息
    @inlinable
    public func describeAssetMachineDetail(_ input: DescribeAssetMachineDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetMachineDetailResponse {
        try await self.client.execute(action: "DescribeAssetMachineDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取资产管理主机资源详细信息
    @inlinable
    public func describeAssetMachineDetail(quuid: String, uuid: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetMachineDetailResponse> {
        self.describeAssetMachineDetail(DescribeAssetMachineDetailRequest(quuid: quuid, uuid: uuid), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资产管理主机资源详细信息
    @inlinable
    public func describeAssetMachineDetail(quuid: String, uuid: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetMachineDetailResponse {
        try await self.describeAssetMachineDetail(DescribeAssetMachineDetailRequest(quuid: quuid, uuid: uuid), region: region, logger: logger, on: eventLoop)
    }
}
