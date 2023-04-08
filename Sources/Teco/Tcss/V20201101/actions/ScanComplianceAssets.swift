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
    /// ScanComplianceAssets请求参数结构体
    public struct ScanComplianceAssetsRequest: TCRequestModel {
        /// 要重新扫描的客户资产项ID的列表。
        public let customerAssetIdSet: [UInt64]

        public init(customerAssetIdSet: [UInt64]) {
            self.customerAssetIdSet = customerAssetIdSet
        }

        enum CodingKeys: String, CodingKey {
            case customerAssetIdSet = "CustomerAssetIdSet"
        }
    }

    /// ScanComplianceAssets返回参数结构体
    public struct ScanComplianceAssetsResponse: TCResponseModel {
        /// 返回重新检测任务的ID。
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 安全合规重新检测选定的资产
    ///
    /// 重新检测选定的资产
    @inlinable
    public func scanComplianceAssets(_ input: ScanComplianceAssetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScanComplianceAssetsResponse> {
        self.client.execute(action: "ScanComplianceAssets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全合规重新检测选定的资产
    ///
    /// 重新检测选定的资产
    @inlinable
    public func scanComplianceAssets(_ input: ScanComplianceAssetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScanComplianceAssetsResponse {
        try await self.client.execute(action: "ScanComplianceAssets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全合规重新检测选定的资产
    ///
    /// 重新检测选定的资产
    @inlinable
    public func scanComplianceAssets(customerAssetIdSet: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScanComplianceAssetsResponse> {
        self.scanComplianceAssets(.init(customerAssetIdSet: customerAssetIdSet), region: region, logger: logger, on: eventLoop)
    }

    /// 安全合规重新检测选定的资产
    ///
    /// 重新检测选定的资产
    @inlinable
    public func scanComplianceAssets(customerAssetIdSet: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScanComplianceAssetsResponse {
        try await self.scanComplianceAssets(.init(customerAssetIdSet: customerAssetIdSet), region: region, logger: logger, on: eventLoop)
    }
}
