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

extension Af {
    /// GetAntiFraud请求参数结构体
    public struct GetAntiFraudRequest: TCRequest {
        /// 默认不传，约定用原始业务
        /// 入参(二选一BusinessSecurityData 或
        /// BusinessCryptoData)。
        public let businessSecurityData: AntiFraudFilter?

        /// 默认不传，约定用密文业务
        /// 入参(二选一
        /// BusinessSecurityData 或
        /// BusinessCryptoData)。
        public let businessCryptoData: AntiFraudCryptoFilter?

        public init(businessSecurityData: AntiFraudFilter? = nil, businessCryptoData: AntiFraudCryptoFilter? = nil) {
            self.businessSecurityData = businessSecurityData
            self.businessCryptoData = businessCryptoData
        }

        enum CodingKeys: String, CodingKey {
            case businessSecurityData = "BusinessSecurityData"
            case businessCryptoData = "BusinessCryptoData"
        }
    }

    /// GetAntiFraud返回参数结构体
    public struct GetAntiFraudResponse: TCResponse {
        /// 反欺诈评分接口结果
        public let data: AntiFraudRecord

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 反欺诈评分接口
    @inlinable
    public func getAntiFraud(_ input: GetAntiFraudRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAntiFraudResponse> {
        self.client.execute(action: "GetAntiFraud", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 反欺诈评分接口
    @inlinable
    public func getAntiFraud(_ input: GetAntiFraudRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAntiFraudResponse {
        try await self.client.execute(action: "GetAntiFraud", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 反欺诈评分接口
    @inlinable
    public func getAntiFraud(businessSecurityData: AntiFraudFilter? = nil, businessCryptoData: AntiFraudCryptoFilter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAntiFraudResponse> {
        self.getAntiFraud(.init(businessSecurityData: businessSecurityData, businessCryptoData: businessCryptoData), region: region, logger: logger, on: eventLoop)
    }

    /// 反欺诈评分接口
    @inlinable
    public func getAntiFraud(businessSecurityData: AntiFraudFilter? = nil, businessCryptoData: AntiFraudCryptoFilter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAntiFraudResponse {
        try await self.getAntiFraud(.init(businessSecurityData: businessSecurityData, businessCryptoData: businessCryptoData), region: region, logger: logger, on: eventLoop)
    }
}
