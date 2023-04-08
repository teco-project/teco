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

extension Btoe {
    /// GetDepositFile请求参数结构体
    public struct GetDepositFileRequest: TCRequestModel {
        /// 存证编码
        public let evidenceId: String

        public init(evidenceId: String) {
            self.evidenceId = evidenceId
        }

        enum CodingKeys: String, CodingKey {
            case evidenceId = "EvidenceId"
        }
    }

    /// GetDepositFile返回参数结构体
    public struct GetDepositFileResponse: TCResponseModel {
        /// 存证编号
        public let evidenceId: String

        /// 存证文件临时链接
        public let evidenceFile: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case evidenceId = "EvidenceId"
            case evidenceFile = "EvidenceFile"
            case requestId = "RequestId"
        }
    }

    /// 存证文件查询
    ///
    /// 用户通过存证编码向BTOE获取存证文件的下载URL。
    /// -注：Hash类存证、业务数据明文存证不产生存证文件。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func getDepositFile(_ input: GetDepositFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDepositFileResponse> {
        fatalError("GetDepositFile is no longer available.")
    }

    /// 存证文件查询
    ///
    /// 用户通过存证编码向BTOE获取存证文件的下载URL。
    /// -注：Hash类存证、业务数据明文存证不产生存证文件。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func getDepositFile(_ input: GetDepositFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDepositFileResponse {
        fatalError("GetDepositFile is no longer available.")
    }

    /// 存证文件查询
    ///
    /// 用户通过存证编码向BTOE获取存证文件的下载URL。
    /// -注：Hash类存证、业务数据明文存证不产生存证文件。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func getDepositFile(evidenceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDepositFileResponse> {
        fatalError("GetDepositFile is no longer available.")
    }

    /// 存证文件查询
    ///
    /// 用户通过存证编码向BTOE获取存证文件的下载URL。
    /// -注：Hash类存证、业务数据明文存证不产生存证文件。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func getDepositFile(evidenceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDepositFileResponse {
        fatalError("GetDepositFile is no longer available.")
    }
}
