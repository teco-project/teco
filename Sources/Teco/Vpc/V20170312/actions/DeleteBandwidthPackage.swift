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

extension Vpc {
    /// DeleteBandwidthPackage请求参数结构体
    public struct DeleteBandwidthPackageRequest: TCRequest {
        /// 待删除带宽包唯一ID
        public let bandwidthPackageId: String

        public init(bandwidthPackageId: String) {
            self.bandwidthPackageId = bandwidthPackageId
        }

        enum CodingKeys: String, CodingKey {
            case bandwidthPackageId = "BandwidthPackageId"
        }
    }

    /// DeleteBandwidthPackage返回参数结构体
    public struct DeleteBandwidthPackageResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除共享带宽包
    ///
    /// 接口支持删除共享带宽包，包括[设备带宽包](https://cloud.tencent.com/document/product/684/15246#.E8.AE.BE.E5.A4.87.E5.B8.A6.E5.AE.BD.E5.8C.85)和[IP带宽包](https://cloud.tencent.com/document/product/684/15246#ip-.E5.B8.A6.E5.AE.BD.E5.8C.85)
    @inlinable @discardableResult
    public func deleteBandwidthPackage(_ input: DeleteBandwidthPackageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBandwidthPackageResponse> {
        self.client.execute(action: "DeleteBandwidthPackage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除共享带宽包
    ///
    /// 接口支持删除共享带宽包，包括[设备带宽包](https://cloud.tencent.com/document/product/684/15246#.E8.AE.BE.E5.A4.87.E5.B8.A6.E5.AE.BD.E5.8C.85)和[IP带宽包](https://cloud.tencent.com/document/product/684/15246#ip-.E5.B8.A6.E5.AE.BD.E5.8C.85)
    @inlinable @discardableResult
    public func deleteBandwidthPackage(_ input: DeleteBandwidthPackageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBandwidthPackageResponse {
        try await self.client.execute(action: "DeleteBandwidthPackage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除共享带宽包
    ///
    /// 接口支持删除共享带宽包，包括[设备带宽包](https://cloud.tencent.com/document/product/684/15246#.E8.AE.BE.E5.A4.87.E5.B8.A6.E5.AE.BD.E5.8C.85)和[IP带宽包](https://cloud.tencent.com/document/product/684/15246#ip-.E5.B8.A6.E5.AE.BD.E5.8C.85)
    @inlinable @discardableResult
    public func deleteBandwidthPackage(bandwidthPackageId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBandwidthPackageResponse> {
        self.deleteBandwidthPackage(.init(bandwidthPackageId: bandwidthPackageId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除共享带宽包
    ///
    /// 接口支持删除共享带宽包，包括[设备带宽包](https://cloud.tencent.com/document/product/684/15246#.E8.AE.BE.E5.A4.87.E5.B8.A6.E5.AE.BD.E5.8C.85)和[IP带宽包](https://cloud.tencent.com/document/product/684/15246#ip-.E5.B8.A6.E5.AE.BD.E5.8C.85)
    @inlinable @discardableResult
    public func deleteBandwidthPackage(bandwidthPackageId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBandwidthPackageResponse {
        try await self.deleteBandwidthPackage(.init(bandwidthPackageId: bandwidthPackageId), region: region, logger: logger, on: eventLoop)
    }
}
