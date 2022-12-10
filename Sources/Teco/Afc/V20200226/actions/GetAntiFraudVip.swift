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

extension Afc {
    /// 反欺诈VIP评分接口
    @inlinable
    public func getAntiFraudVip(_ input: GetAntiFraudVipRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetAntiFraudVipResponse > {
        self.client.execute(action: "GetAntiFraudVip", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 反欺诈VIP评分接口
    @inlinable
    public func getAntiFraudVip(_ input: GetAntiFraudVipRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAntiFraudVipResponse {
        try await self.client.execute(action: "GetAntiFraudVip", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetAntiFraudVip请求参数结构体
    public struct GetAntiFraudVipRequest: TCRequestModel {
        /// 默认不传，约定用原始业务
        /// 入参(二选一BusinessSecurityData 或
        /// BusinessCryptoData)。
        public let businessSecurityData: AntiFraudVipFilter
        
        /// 默认不传，约定用密文业务
        /// 入参(二选一
        /// BusinessSecurityData 或
        /// BusinessCryptoData)。
        public let businessCryptoData: AntiFraudVipCryptoFilter
        
        public init (businessSecurityData: AntiFraudVipFilter, businessCryptoData: AntiFraudVipCryptoFilter) {
            self.businessSecurityData = businessSecurityData
            self.businessCryptoData = businessCryptoData
        }
        
        enum CodingKeys: String, CodingKey {
            case businessSecurityData = "BusinessSecurityData"
            case businessCryptoData = "BusinessCryptoData"
        }
    }
    
    /// GetAntiFraudVip返回参数结构体
    public struct GetAntiFraudVipResponse: TCResponseModel {
        /// 反欺诈评分接口结果
        public let data: AntiFraudVipRecord
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}
