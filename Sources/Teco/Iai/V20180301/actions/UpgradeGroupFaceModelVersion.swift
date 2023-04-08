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

extension Iai {
    /// UpgradeGroupFaceModelVersion请求参数结构体
    public struct UpgradeGroupFaceModelVersionRequest: TCRequestModel {
        /// 需要升级的人员库ID。
        public let groupId: String

        /// 需要升级至的算法模型版本。默认为最新版本。不可逆向升级
        public let faceModelVersion: String

        public init(groupId: String, faceModelVersion: String) {
            self.groupId = groupId
            self.faceModelVersion = faceModelVersion
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case faceModelVersion = "FaceModelVersion"
        }
    }

    /// UpgradeGroupFaceModelVersion返回参数结构体
    public struct UpgradeGroupFaceModelVersionResponse: TCResponseModel {
        /// 升级任务ID，用于查询、获取升级的进度和结果。
        public let jobId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 人员库升级
    ///
    /// 升级人员库。升级过程中，人员库仍然为原算法版本，人员库相关操作仍然支持。升级完成后，人员库为新算法版本。
    /// 单个人员库有且仅支持一次回滚操作。
    /// 注：此处QPS限制为10。
    @available(*, unavailable, message: "接口已经不使用了，需要下线掉，以免留在官网产生歧义")
    @inlinable
    public func upgradeGroupFaceModelVersion(_ input: UpgradeGroupFaceModelVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeGroupFaceModelVersionResponse> {
        fatalError("UpgradeGroupFaceModelVersion is no longer available.")
    }

    /// 人员库升级
    ///
    /// 升级人员库。升级过程中，人员库仍然为原算法版本，人员库相关操作仍然支持。升级完成后，人员库为新算法版本。
    /// 单个人员库有且仅支持一次回滚操作。
    /// 注：此处QPS限制为10。
    @available(*, unavailable, message: "接口已经不使用了，需要下线掉，以免留在官网产生歧义")
    @inlinable
    public func upgradeGroupFaceModelVersion(_ input: UpgradeGroupFaceModelVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeGroupFaceModelVersionResponse {
        fatalError("UpgradeGroupFaceModelVersion is no longer available.")
    }

    /// 人员库升级
    ///
    /// 升级人员库。升级过程中，人员库仍然为原算法版本，人员库相关操作仍然支持。升级完成后，人员库为新算法版本。
    /// 单个人员库有且仅支持一次回滚操作。
    /// 注：此处QPS限制为10。
    @available(*, unavailable, message: "接口已经不使用了，需要下线掉，以免留在官网产生歧义")
    @inlinable
    public func upgradeGroupFaceModelVersion(groupId: String, faceModelVersion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeGroupFaceModelVersionResponse> {
        fatalError("UpgradeGroupFaceModelVersion is no longer available.")
    }

    /// 人员库升级
    ///
    /// 升级人员库。升级过程中，人员库仍然为原算法版本，人员库相关操作仍然支持。升级完成后，人员库为新算法版本。
    /// 单个人员库有且仅支持一次回滚操作。
    /// 注：此处QPS限制为10。
    @available(*, unavailable, message: "接口已经不使用了，需要下线掉，以免留在官网产生歧义")
    @inlinable
    public func upgradeGroupFaceModelVersion(groupId: String, faceModelVersion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeGroupFaceModelVersionResponse {
        fatalError("UpgradeGroupFaceModelVersion is no longer available.")
    }
}
