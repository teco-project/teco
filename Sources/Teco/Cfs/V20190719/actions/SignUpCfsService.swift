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

extension Cfs {
    /// SignUpCfsService请求参数结构体
    public struct SignUpCfsServiceRequest: TCRequestModel {
        public init() {
        }
    }

    /// SignUpCfsService返回参数结构体
    public struct SignUpCfsServiceResponse: TCResponseModel {
        /// 该用户当前 CFS 服务的状态，creating 是开通中，created 是已开通
        public let cfsServiceStatus: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cfsServiceStatus = "CfsServiceStatus"
            case requestId = "RequestId"
        }
    }

    /// 开通CFS服务
    ///
    /// 本接口（SignUpCfsService）用于开通CFS服务。
    @inlinable
    public func signUpCfsService(_ input: SignUpCfsServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SignUpCfsServiceResponse> {
        self.client.execute(action: "SignUpCfsService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开通CFS服务
    ///
    /// 本接口（SignUpCfsService）用于开通CFS服务。
    @inlinable
    public func signUpCfsService(_ input: SignUpCfsServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SignUpCfsServiceResponse {
        try await self.client.execute(action: "SignUpCfsService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开通CFS服务
    ///
    /// 本接口（SignUpCfsService）用于开通CFS服务。
    @inlinable
    public func signUpCfsService(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SignUpCfsServiceResponse> {
        self.signUpCfsService(SignUpCfsServiceRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 开通CFS服务
    ///
    /// 本接口（SignUpCfsService）用于开通CFS服务。
    @inlinable
    public func signUpCfsService(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SignUpCfsServiceResponse {
        try await self.signUpCfsService(SignUpCfsServiceRequest(), region: region, logger: logger, on: eventLoop)
    }
}
