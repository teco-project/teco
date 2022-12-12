//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DeleteCompliancePolicyItemFromWhitelist请求参数结构体
    public struct DeleteCompliancePolicyItemFromWhitelistRequest: TCRequestModel {
        /// 指定的白名单项的ID的列表
        public let whitelistIdSet: [UInt64]
        
        public init (whitelistIdSet: [UInt64]) {
            self.whitelistIdSet = whitelistIdSet
        }
        
        enum CodingKeys: String, CodingKey {
            case whitelistIdSet = "WhitelistIdSet"
        }
    }
    
    /// DeleteCompliancePolicyItemFromWhitelist返回参数结构体
    public struct DeleteCompliancePolicyItemFromWhitelistResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 安全合规取消忽略检测项列表
    ///
    /// 从白名单中删除将指定的检测项。
    @inlinable
    public func deleteCompliancePolicyItemFromWhitelist(_ input: DeleteCompliancePolicyItemFromWhitelistRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteCompliancePolicyItemFromWhitelistResponse > {
        self.client.execute(action: "DeleteCompliancePolicyItemFromWhitelist", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 安全合规取消忽略检测项列表
    ///
    /// 从白名单中删除将指定的检测项。
    @inlinable
    public func deleteCompliancePolicyItemFromWhitelist(_ input: DeleteCompliancePolicyItemFromWhitelistRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCompliancePolicyItemFromWhitelistResponse {
        try await self.client.execute(action: "DeleteCompliancePolicyItemFromWhitelist", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
