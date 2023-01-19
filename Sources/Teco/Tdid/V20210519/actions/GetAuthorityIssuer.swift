//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tdid {
    /// GetAuthorityIssuer请求参数结构体
    public struct GetAuthorityIssuerRequest: TCRequestModel {
        /// tdid
        public let did: String

        public init(did: String) {
            self.did = did
        }

        enum CodingKeys: String, CodingKey {
            case did = "Did"
        }
    }

    /// GetAuthorityIssuer返回参数结构体
    public struct GetAuthorityIssuerResponse: TCResponseModel {
        /// 名称
        public let name: String

        /// 区块链网络id
        public let clusterId: String

        /// 区块链群组id
        public let groupId: UInt64

        /// 权威机构did
        public let did: String

        /// 机构备注信息
        public let remark: String

        /// 注册时间
        public let registerTime: String

        /// 认证时间
        public let recognizeTime: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case clusterId = "ClusterId"
            case groupId = "GroupId"
            case did = "Did"
            case remark = "Remark"
            case registerTime = "RegisterTime"
            case recognizeTime = "RecognizeTime"
            case requestId = "RequestId"
        }
    }

    /// 获取权威机构信息
    @inlinable
    public func getAuthorityIssuer(_ input: GetAuthorityIssuerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAuthorityIssuerResponse> {
        self.client.execute(action: "GetAuthorityIssuer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取权威机构信息
    @inlinable
    public func getAuthorityIssuer(_ input: GetAuthorityIssuerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAuthorityIssuerResponse {
        try await self.client.execute(action: "GetAuthorityIssuer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取权威机构信息
    @inlinable
    public func getAuthorityIssuer(did: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAuthorityIssuerResponse> {
        self.getAuthorityIssuer(GetAuthorityIssuerRequest(did: did), region: region, logger: logger, on: eventLoop)
    }

    /// 获取权威机构信息
    @inlinable
    public func getAuthorityIssuer(did: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAuthorityIssuerResponse {
        try await self.getAuthorityIssuer(GetAuthorityIssuerRequest(did: did), region: region, logger: logger, on: eventLoop)
    }
}
