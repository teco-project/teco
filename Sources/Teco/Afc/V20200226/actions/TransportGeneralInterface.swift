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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Afc {
    /// TransportGeneralInterface请求参数结构体
    public struct TransportGeneralInterfaceRequest: TCRequestModel {
        /// 业务入参
        public let businessSecurityData: TransportGeneralInterfaceInput?

        public init(businessSecurityData: TransportGeneralInterfaceInput? = nil) {
            self.businessSecurityData = businessSecurityData
        }

        enum CodingKeys: String, CodingKey {
            case businessSecurityData = "BusinessSecurityData"
        }
    }

    /// TransportGeneralInterface返回参数结构体
    public struct TransportGeneralInterfaceResponse: TCResponseModel {
        /// 业务出参
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: TransportGeneralInterfaceOutput?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 信鸽取数平台接口
    ///
    /// 天御信鸽取数平台接口
    @inlinable
    public func transportGeneralInterface(_ input: TransportGeneralInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TransportGeneralInterfaceResponse> {
        self.client.execute(action: "TransportGeneralInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 信鸽取数平台接口
    ///
    /// 天御信鸽取数平台接口
    @inlinable
    public func transportGeneralInterface(_ input: TransportGeneralInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TransportGeneralInterfaceResponse {
        try await self.client.execute(action: "TransportGeneralInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 信鸽取数平台接口
    ///
    /// 天御信鸽取数平台接口
    @inlinable
    public func transportGeneralInterface(businessSecurityData: TransportGeneralInterfaceInput? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TransportGeneralInterfaceResponse> {
        self.transportGeneralInterface(.init(businessSecurityData: businessSecurityData), region: region, logger: logger, on: eventLoop)
    }

    /// 信鸽取数平台接口
    ///
    /// 天御信鸽取数平台接口
    @inlinable
    public func transportGeneralInterface(businessSecurityData: TransportGeneralInterfaceInput? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TransportGeneralInterfaceResponse {
        try await self.transportGeneralInterface(.init(businessSecurityData: businessSecurityData), region: region, logger: logger, on: eventLoop)
    }
}
