//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tcss {
    /// 安全合规用指定的检测项重新检测选定的资产
    ///
    /// 用指定的检测项重新检测选定的资产，返回创建的合规检查任务的ID。
    @inlinable
    public func scanComplianceAssetsByPolicyItem(_ input: ScanComplianceAssetsByPolicyItemRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ScanComplianceAssetsByPolicyItemResponse > {
        self.client.execute(action: "ScanComplianceAssetsByPolicyItem", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 安全合规用指定的检测项重新检测选定的资产
    ///
    /// 用指定的检测项重新检测选定的资产，返回创建的合规检查任务的ID。
    @inlinable
    public func scanComplianceAssetsByPolicyItem(_ input: ScanComplianceAssetsByPolicyItemRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScanComplianceAssetsByPolicyItemResponse {
        try await self.client.execute(action: "ScanComplianceAssetsByPolicyItem", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ScanComplianceAssetsByPolicyItem请求参数结构体
    public struct ScanComplianceAssetsByPolicyItemRequest: TCRequestModel {
        /// 指定的检测项的ID
        public let customerPolicyItemId: UInt64
        
        /// 要重新扫描的客户资产项ID的列表。
        public let customerAssetIdSet: [UInt64]
        
        public init (customerPolicyItemId: UInt64, customerAssetIdSet: [UInt64]) {
            self.customerPolicyItemId = customerPolicyItemId
            self.customerAssetIdSet = customerAssetIdSet
        }
        
        enum CodingKeys: String, CodingKey {
            case customerPolicyItemId = "CustomerPolicyItemId"
            case customerAssetIdSet = "CustomerAssetIdSet"
        }
    }
    
    /// ScanComplianceAssetsByPolicyItem返回参数结构体
    public struct ScanComplianceAssetsByPolicyItemResponse: TCResponseModel {
        /// 返回重新检测任务的ID。
        public let taskId: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
}