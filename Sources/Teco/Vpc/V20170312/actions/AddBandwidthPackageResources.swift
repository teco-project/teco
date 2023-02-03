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

extension Vpc {
    /// AddBandwidthPackageResources请求参数结构体
    public struct AddBandwidthPackageResourcesRequest: TCRequestModel {
        /// 资源唯一ID，当前支持EIP资源和LB资源，形如'eip-xxxx', 'lb-xxxx'
        public let resourceIds: [String]

        /// 带宽包唯一标识ID，形如'bwp-xxxx'
        public let bandwidthPackageId: String?

        /// 带宽包类型，当前支持'BGP'类型，表示内部资源是BGP IP。
        public let networkType: String?

        /// 资源类型，包括'Address', 'LoadBalance'
        public let resourceType: String?

        /// 带宽包协议类型。当前支持'ipv4'和'ipv6'协议类型。
        public let `protocol`: String?

        public init(resourceIds: [String], bandwidthPackageId: String? = nil, networkType: String? = nil, resourceType: String? = nil, protocol: String? = nil) {
            self.resourceIds = resourceIds
            self.bandwidthPackageId = bandwidthPackageId
            self.networkType = networkType
            self.resourceType = resourceType
            self.protocol = `protocol`
        }

        enum CodingKeys: String, CodingKey {
            case resourceIds = "ResourceIds"
            case bandwidthPackageId = "BandwidthPackageId"
            case networkType = "NetworkType"
            case resourceType = "ResourceType"
            case `protocol` = "Protocol"
        }
    }

    /// AddBandwidthPackageResources返回参数结构体
    public struct AddBandwidthPackageResourcesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加带宽包资源
    ///
    /// 接口用于添加带宽包资源，包括[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)和[负载均衡](https://cloud.tencent.com/document/product/214/517)等
    @inlinable @discardableResult
    public func addBandwidthPackageResources(_ input: AddBandwidthPackageResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddBandwidthPackageResourcesResponse> {
        self.client.execute(action: "AddBandwidthPackageResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加带宽包资源
    ///
    /// 接口用于添加带宽包资源，包括[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)和[负载均衡](https://cloud.tencent.com/document/product/214/517)等
    @inlinable @discardableResult
    public func addBandwidthPackageResources(_ input: AddBandwidthPackageResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddBandwidthPackageResourcesResponse {
        try await self.client.execute(action: "AddBandwidthPackageResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加带宽包资源
    ///
    /// 接口用于添加带宽包资源，包括[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)和[负载均衡](https://cloud.tencent.com/document/product/214/517)等
    @inlinable @discardableResult
    public func addBandwidthPackageResources(resourceIds: [String], bandwidthPackageId: String? = nil, networkType: String? = nil, resourceType: String? = nil, protocol: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddBandwidthPackageResourcesResponse> {
        let input = AddBandwidthPackageResourcesRequest(resourceIds: resourceIds, bandwidthPackageId: bandwidthPackageId, networkType: networkType, resourceType: resourceType, protocol: `protocol`)
        return self.client.execute(action: "AddBandwidthPackageResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加带宽包资源
    ///
    /// 接口用于添加带宽包资源，包括[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)和[负载均衡](https://cloud.tencent.com/document/product/214/517)等
    @inlinable @discardableResult
    public func addBandwidthPackageResources(resourceIds: [String], bandwidthPackageId: String? = nil, networkType: String? = nil, resourceType: String? = nil, protocol: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddBandwidthPackageResourcesResponse {
        let input = AddBandwidthPackageResourcesRequest(resourceIds: resourceIds, bandwidthPackageId: bandwidthPackageId, networkType: networkType, resourceType: resourceType, protocol: `protocol`)
        return try await self.client.execute(action: "AddBandwidthPackageResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
