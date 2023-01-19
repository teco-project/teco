//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Iecp {
    /// DescribeIotDevices请求参数结构体
    public struct DescribeIotDevicesRequest: TCRequestModel {
        /// 页偏移
        public let offset: Int64

        /// 每页数量
        public let limit: Int64

        /// 产品id
        public let productId: String?

        /// 设备名称模糊查找
        public let namePattern: String?

        /// 版本列表
        public let versions: [String]?

        /// ASC 或 DESC
        public let order: String?

        public init(offset: Int64, limit: Int64, productId: String? = nil, namePattern: String? = nil, versions: [String]? = nil, order: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.productId = productId
            self.namePattern = namePattern
            self.versions = versions
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case productId = "ProductId"
            case namePattern = "NamePattern"
            case versions = "Versions"
            case order = "Order"
        }
    }

    /// DescribeIotDevices返回参数结构体
    public struct DescribeIotDevicesResponse: TCResponseModel {
        /// 符合查找条件的总数量
        public let totalCount: Int64

        /// 设备列表
        public let deviceSet: [IotDevicesInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case deviceSet = "DeviceSet"
            case requestId = "RequestId"
        }
    }

    /// 获取设备列表信息
    @inlinable
    public func describeIotDevices(_ input: DescribeIotDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIotDevicesResponse> {
        self.client.execute(action: "DescribeIotDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备列表信息
    @inlinable
    public func describeIotDevices(_ input: DescribeIotDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIotDevicesResponse {
        try await self.client.execute(action: "DescribeIotDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备列表信息
    @inlinable
    public func describeIotDevices(offset: Int64, limit: Int64, productId: String? = nil, namePattern: String? = nil, versions: [String]? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIotDevicesResponse> {
        self.describeIotDevices(DescribeIotDevicesRequest(offset: offset, limit: limit, productId: productId, namePattern: namePattern, versions: versions, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备列表信息
    @inlinable
    public func describeIotDevices(offset: Int64, limit: Int64, productId: String? = nil, namePattern: String? = nil, versions: [String]? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIotDevicesResponse {
        try await self.describeIotDevices(DescribeIotDevicesRequest(offset: offset, limit: limit, productId: productId, namePattern: namePattern, versions: versions, order: order), region: region, logger: logger, on: eventLoop)
    }
}
