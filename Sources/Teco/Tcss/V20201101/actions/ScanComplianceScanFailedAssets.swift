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
    /// ScanComplianceScanFailedAssets请求参数结构体
    public struct ScanComplianceScanFailedAssetsRequest: TCRequestModel {
        /// 要重新扫描的客户资产项ID的列表。
        public let customerAssetIdSet: [UInt64]

        public init(customerAssetIdSet: [UInt64]) {
            self.customerAssetIdSet = customerAssetIdSet
        }

        enum CodingKeys: String, CodingKey {
            case customerAssetIdSet = "CustomerAssetIdSet"
        }
    }

    /// ScanComplianceScanFailedAssets返回参数结构体
    public struct ScanComplianceScanFailedAssetsResponse: TCResponseModel {
        /// 返回重新检测任务的ID。
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 安全合规重新检测上次检测失败的资产
    ///
    /// 重新检测选定的检测失败的资产下的所有失败的检测项，返回创建的合规检查任务的ID。
    @inlinable
    public func scanComplianceScanFailedAssets(_ input: ScanComplianceScanFailedAssetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScanComplianceScanFailedAssetsResponse> {
        self.client.execute(action: "ScanComplianceScanFailedAssets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全合规重新检测上次检测失败的资产
    ///
    /// 重新检测选定的检测失败的资产下的所有失败的检测项，返回创建的合规检查任务的ID。
    @inlinable
    public func scanComplianceScanFailedAssets(_ input: ScanComplianceScanFailedAssetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScanComplianceScanFailedAssetsResponse {
        try await self.client.execute(action: "ScanComplianceScanFailedAssets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全合规重新检测上次检测失败的资产
    ///
    /// 重新检测选定的检测失败的资产下的所有失败的检测项，返回创建的合规检查任务的ID。
    @inlinable
    public func scanComplianceScanFailedAssets(customerAssetIdSet: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScanComplianceScanFailedAssetsResponse> {
        self.scanComplianceScanFailedAssets(.init(customerAssetIdSet: customerAssetIdSet), region: region, logger: logger, on: eventLoop)
    }

    /// 安全合规重新检测上次检测失败的资产
    ///
    /// 重新检测选定的检测失败的资产下的所有失败的检测项，返回创建的合规检查任务的ID。
    @inlinable
    public func scanComplianceScanFailedAssets(customerAssetIdSet: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScanComplianceScanFailedAssetsResponse {
        try await self.scanComplianceScanFailedAssets(.init(customerAssetIdSet: customerAssetIdSet), region: region, logger: logger, on: eventLoop)
    }
}
