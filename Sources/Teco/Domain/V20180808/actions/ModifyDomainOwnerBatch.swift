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

extension Domain {
    /// ModifyDomainOwnerBatch请求参数结构体
    public struct ModifyDomainOwnerBatchRequest: TCRequestModel {
        /// 要过户的域名。
        public let domains: [String]

        /// 转入账户的uin。
        public let newOwnerUin: String

        /// 是否同时转移对应的 DNS 解析域名，默认false
        public let transferDns: Bool?

        /// 转入账户的appid。
        public let newOwnerAppId: String?

        public init(domains: [String], newOwnerUin: String, transferDns: Bool? = nil, newOwnerAppId: String? = nil) {
            self.domains = domains
            self.newOwnerUin = newOwnerUin
            self.transferDns = transferDns
            self.newOwnerAppId = newOwnerAppId
        }

        enum CodingKeys: String, CodingKey {
            case domains = "Domains"
            case newOwnerUin = "NewOwnerUin"
            case transferDns = "TransferDns"
            case newOwnerAppId = "NewOwnerAppId"
        }
    }

    /// ModifyDomainOwnerBatch返回参数结构体
    public struct ModifyDomainOwnerBatchResponse: TCResponseModel {
        /// 日志id
        public let logId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case logId = "LogId"
            case requestId = "RequestId"
        }
    }

    /// 批量账号间转移
    ///
    /// 本接口 ( ModifyDomainOwnerBatch) 用于域名批量账号间转移 。
    @inlinable
    public func modifyDomainOwnerBatch(_ input: ModifyDomainOwnerBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDomainOwnerBatchResponse> {
        self.client.execute(action: "ModifyDomainOwnerBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量账号间转移
    ///
    /// 本接口 ( ModifyDomainOwnerBatch) 用于域名批量账号间转移 。
    @inlinable
    public func modifyDomainOwnerBatch(_ input: ModifyDomainOwnerBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDomainOwnerBatchResponse {
        try await self.client.execute(action: "ModifyDomainOwnerBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量账号间转移
    ///
    /// 本接口 ( ModifyDomainOwnerBatch) 用于域名批量账号间转移 。
    @inlinable
    public func modifyDomainOwnerBatch(domains: [String], newOwnerUin: String, transferDns: Bool? = nil, newOwnerAppId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDomainOwnerBatchResponse> {
        let input = ModifyDomainOwnerBatchRequest(domains: domains, newOwnerUin: newOwnerUin, transferDns: transferDns, newOwnerAppId: newOwnerAppId)
        return self.client.execute(action: "ModifyDomainOwnerBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量账号间转移
    ///
    /// 本接口 ( ModifyDomainOwnerBatch) 用于域名批量账号间转移 。
    @inlinable
    public func modifyDomainOwnerBatch(domains: [String], newOwnerUin: String, transferDns: Bool? = nil, newOwnerAppId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDomainOwnerBatchResponse {
        let input = ModifyDomainOwnerBatchRequest(domains: domains, newOwnerUin: newOwnerUin, transferDns: transferDns, newOwnerAppId: newOwnerAppId)
        return try await self.client.execute(action: "ModifyDomainOwnerBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
