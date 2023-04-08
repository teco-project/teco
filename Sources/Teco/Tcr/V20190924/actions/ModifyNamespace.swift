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

extension Tcr {
    /// ModifyNamespace请求参数结构体
    public struct ModifyNamespaceRequest: TCRequestModel {
        /// 实例Id
        public let registryId: String

        /// 命名空间名称
        public let namespaceName: String

        /// 访问级别，True为公开，False为私有
        public let isPublic: Bool?

        /// 扫描级别，True为自动，False为手动
        public let isAutoScan: Bool?

        /// 阻断开关，True为开放，False为关闭
        public let isPreventVUL: Bool?

        /// 阻断漏洞等级，目前仅支持 low、medium、high
        public let severity: String?

        /// 漏洞白名单列表
        public let cveWhitelistItems: [CVEWhitelistItem]?

        public init(registryId: String, namespaceName: String, isPublic: Bool? = nil, isAutoScan: Bool? = nil, isPreventVUL: Bool? = nil, severity: String? = nil, cveWhitelistItems: [CVEWhitelistItem]? = nil) {
            self.registryId = registryId
            self.namespaceName = namespaceName
            self.isPublic = isPublic
            self.isAutoScan = isAutoScan
            self.isPreventVUL = isPreventVUL
            self.severity = severity
            self.cveWhitelistItems = cveWhitelistItems
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case namespaceName = "NamespaceName"
            case isPublic = "IsPublic"
            case isAutoScan = "IsAutoScan"
            case isPreventVUL = "IsPreventVUL"
            case severity = "Severity"
            case cveWhitelistItems = "CVEWhitelistItems"
        }
    }

    /// ModifyNamespace返回参数结构体
    public struct ModifyNamespaceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新命名空间信息
    @inlinable @discardableResult
    public func modifyNamespace(_ input: ModifyNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNamespaceResponse> {
        self.client.execute(action: "ModifyNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新命名空间信息
    @inlinable @discardableResult
    public func modifyNamespace(_ input: ModifyNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNamespaceResponse {
        try await self.client.execute(action: "ModifyNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新命名空间信息
    @inlinable @discardableResult
    public func modifyNamespace(registryId: String, namespaceName: String, isPublic: Bool? = nil, isAutoScan: Bool? = nil, isPreventVUL: Bool? = nil, severity: String? = nil, cveWhitelistItems: [CVEWhitelistItem]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNamespaceResponse> {
        self.modifyNamespace(.init(registryId: registryId, namespaceName: namespaceName, isPublic: isPublic, isAutoScan: isAutoScan, isPreventVUL: isPreventVUL, severity: severity, cveWhitelistItems: cveWhitelistItems), region: region, logger: logger, on: eventLoop)
    }

    /// 更新命名空间信息
    @inlinable @discardableResult
    public func modifyNamespace(registryId: String, namespaceName: String, isPublic: Bool? = nil, isAutoScan: Bool? = nil, isPreventVUL: Bool? = nil, severity: String? = nil, cveWhitelistItems: [CVEWhitelistItem]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNamespaceResponse {
        try await self.modifyNamespace(.init(registryId: registryId, namespaceName: namespaceName, isPublic: isPublic, isAutoScan: isAutoScan, isPreventVUL: isPreventVUL, severity: severity, cveWhitelistItems: cveWhitelistItems), region: region, logger: logger, on: eventLoop)
    }
}
