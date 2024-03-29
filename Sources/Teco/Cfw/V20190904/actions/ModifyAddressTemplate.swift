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

extension Cfw {
    /// ModifyAddressTemplate请求参数结构体
    public struct ModifyAddressTemplateRequest: TCRequest {
        /// 地址模板唯一Id
        public let uuid: String

        /// 模板名称
        public let name: String

        /// 模板描述
        public let detail: String

        /// Type为1，ip模板eg：1.1.1.1,2.2.2.2；
        /// Type为5，域名模板eg：www.qq.com,www.tencent.com
        public let ipString: String

        /// 1 ip模板
        /// 5 域名模板
        public let type: Int64

        public init(uuid: String, name: String, detail: String, ipString: String, type: Int64) {
            self.uuid = uuid
            self.name = name
            self.detail = detail
            self.ipString = ipString
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case name = "Name"
            case detail = "Detail"
            case ipString = "IpString"
            case type = "Type"
        }
    }

    /// ModifyAddressTemplate返回参数结构体
    public struct ModifyAddressTemplateResponse: TCResponse {
        /// 创建结果,0成功
        public let status: Int64

        /// 唯一Id
        public let uuid: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case uuid = "Uuid"
            case requestId = "RequestId"
        }
    }

    /// 修改地址模板
    @inlinable
    public func modifyAddressTemplate(_ input: ModifyAddressTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAddressTemplateResponse> {
        self.client.execute(action: "ModifyAddressTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改地址模板
    @inlinable
    public func modifyAddressTemplate(_ input: ModifyAddressTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAddressTemplateResponse {
        try await self.client.execute(action: "ModifyAddressTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改地址模板
    @inlinable
    public func modifyAddressTemplate(uuid: String, name: String, detail: String, ipString: String, type: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAddressTemplateResponse> {
        self.modifyAddressTemplate(.init(uuid: uuid, name: name, detail: detail, ipString: ipString, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 修改地址模板
    @inlinable
    public func modifyAddressTemplate(uuid: String, name: String, detail: String, ipString: String, type: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAddressTemplateResponse {
        try await self.modifyAddressTemplate(.init(uuid: uuid, name: name, detail: detail, ipString: ipString, type: type), region: region, logger: logger, on: eventLoop)
    }
}
