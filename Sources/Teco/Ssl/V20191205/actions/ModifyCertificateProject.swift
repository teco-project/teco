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

extension Ssl {
    /// ModifyCertificateProject请求参数结构体
    public struct ModifyCertificateProjectRequest: TCRequest {
        /// 需要修改所属项目的证书 ID 集合，最多100个证书。
        public let certificateIdList: [String]

        /// 项目 ID。
        public let projectId: UInt64

        public init(certificateIdList: [String], projectId: UInt64) {
            self.certificateIdList = certificateIdList
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case certificateIdList = "CertificateIdList"
            case projectId = "ProjectId"
        }
    }

    /// ModifyCertificateProject返回参数结构体
    public struct ModifyCertificateProjectResponse: TCResponse {
        /// 修改所属项目成功的证书集合。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let successCertificates: [String]?

        /// 修改所属项目失败的证书集合。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failCertificates: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case successCertificates = "SuccessCertificates"
            case failCertificates = "FailCertificates"
            case requestId = "RequestId"
        }
    }

    /// 修改证书所属项目
    ///
    /// 批量修改证书所属项目。
    @inlinable
    public func modifyCertificateProject(_ input: ModifyCertificateProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCertificateProjectResponse> {
        self.client.execute(action: "ModifyCertificateProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改证书所属项目
    ///
    /// 批量修改证书所属项目。
    @inlinable
    public func modifyCertificateProject(_ input: ModifyCertificateProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCertificateProjectResponse {
        try await self.client.execute(action: "ModifyCertificateProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改证书所属项目
    ///
    /// 批量修改证书所属项目。
    @inlinable
    public func modifyCertificateProject(certificateIdList: [String], projectId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCertificateProjectResponse> {
        self.modifyCertificateProject(.init(certificateIdList: certificateIdList, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改证书所属项目
    ///
    /// 批量修改证书所属项目。
    @inlinable
    public func modifyCertificateProject(certificateIdList: [String], projectId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCertificateProjectResponse {
        try await self.modifyCertificateProject(.init(certificateIdList: certificateIdList, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
