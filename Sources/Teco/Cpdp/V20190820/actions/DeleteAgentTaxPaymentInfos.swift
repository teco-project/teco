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

extension Cpdp {
    /// 直播平台-删除代理商完税信息
    ///
    /// 直播平台-删除代理商完税信息
    @inlinable
    public func deleteAgentTaxPaymentInfos(_ input: DeleteAgentTaxPaymentInfosRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAgentTaxPaymentInfosResponse > {
        self.client.execute(action: "DeleteAgentTaxPaymentInfos", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 直播平台-删除代理商完税信息
    ///
    /// 直播平台-删除代理商完税信息
    @inlinable
    public func deleteAgentTaxPaymentInfos(_ input: DeleteAgentTaxPaymentInfosRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAgentTaxPaymentInfosResponse {
        try await self.client.execute(action: "DeleteAgentTaxPaymentInfos", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteAgentTaxPaymentInfos请求参数结构体
    public struct DeleteAgentTaxPaymentInfosRequest: TCRequestModel {
        /// 批次号
        public let batchNum: Int64
        
        public init (batchNum: Int64) {
            self.batchNum = batchNum
        }
        
        enum CodingKeys: String, CodingKey {
            case batchNum = "BatchNum"
        }
    }
    
    /// DeleteAgentTaxPaymentInfos返回参数结构体
    public struct DeleteAgentTaxPaymentInfosResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}