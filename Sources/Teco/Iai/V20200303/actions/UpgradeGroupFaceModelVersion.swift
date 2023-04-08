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

import TecoCore

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
    ///
    /// 升级是一个耗时的操作，执行时间与人员库的人脸数相关，升级的人员库中的人脸数越多，升级的耗时越长。升级接口是个异步任务，调用成功后返回JobId，通过GetUpgradeGroupFaceModelVersionResult查询升级进度和结果。如果升级成功，人员库版本将切换到新版本。如果想回滚到旧版本，可以调用RevertGroupFaceModelVersion进行回滚。
    ///
    /// 注：某些接口无法进行跨人员库版本操作，例如SearchFaces，SearchPersons和CopyPerson等。当业务有多个Group操作的场景时，如同时搜索Group1和Group2，如果升级了Group1，此时Group1和Group2版本不同，造成了跨版本操作，将导致Search接口无法正常执行，返回不允许执行跨版本操作错误，升级前需考虑业务是否有多库操作的场景，否则会影响线上接口表现。
    @available(*, unavailable, message: "避免官网歧义")
    @inlinable
    public func upgradeGroupFaceModelVersion(_ input: UpgradeGroupFaceModelVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeGroupFaceModelVersionResponse> {
        fatalError("UpgradeGroupFaceModelVersion is no longer available.")
    }

    /// 人员库升级
    ///
    /// 升级人员库。升级过程中，人员库仍然为原算法版本，人员库相关操作仍然支持。升级完成后，人员库为新算法版本。
    /// 单个人员库有且仅支持一次回滚操作。
    ///
    /// 升级是一个耗时的操作，执行时间与人员库的人脸数相关，升级的人员库中的人脸数越多，升级的耗时越长。升级接口是个异步任务，调用成功后返回JobId，通过GetUpgradeGroupFaceModelVersionResult查询升级进度和结果。如果升级成功，人员库版本将切换到新版本。如果想回滚到旧版本，可以调用RevertGroupFaceModelVersion进行回滚。
    ///
    /// 注：某些接口无法进行跨人员库版本操作，例如SearchFaces，SearchPersons和CopyPerson等。当业务有多个Group操作的场景时，如同时搜索Group1和Group2，如果升级了Group1，此时Group1和Group2版本不同，造成了跨版本操作，将导致Search接口无法正常执行，返回不允许执行跨版本操作错误，升级前需考虑业务是否有多库操作的场景，否则会影响线上接口表现。
    @available(*, unavailable, message: "避免官网歧义")
    @inlinable
    public func upgradeGroupFaceModelVersion(_ input: UpgradeGroupFaceModelVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeGroupFaceModelVersionResponse {
        fatalError("UpgradeGroupFaceModelVersion is no longer available.")
    }

    /// 人员库升级
    ///
    /// 升级人员库。升级过程中，人员库仍然为原算法版本，人员库相关操作仍然支持。升级完成后，人员库为新算法版本。
    /// 单个人员库有且仅支持一次回滚操作。
    ///
    /// 升级是一个耗时的操作，执行时间与人员库的人脸数相关，升级的人员库中的人脸数越多，升级的耗时越长。升级接口是个异步任务，调用成功后返回JobId，通过GetUpgradeGroupFaceModelVersionResult查询升级进度和结果。如果升级成功，人员库版本将切换到新版本。如果想回滚到旧版本，可以调用RevertGroupFaceModelVersion进行回滚。
    ///
    /// 注：某些接口无法进行跨人员库版本操作，例如SearchFaces，SearchPersons和CopyPerson等。当业务有多个Group操作的场景时，如同时搜索Group1和Group2，如果升级了Group1，此时Group1和Group2版本不同，造成了跨版本操作，将导致Search接口无法正常执行，返回不允许执行跨版本操作错误，升级前需考虑业务是否有多库操作的场景，否则会影响线上接口表现。
    @available(*, unavailable, message: "避免官网歧义")
    @inlinable
    public func upgradeGroupFaceModelVersion(groupId: String, faceModelVersion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeGroupFaceModelVersionResponse> {
        fatalError("UpgradeGroupFaceModelVersion is no longer available.")
    }

    /// 人员库升级
    ///
    /// 升级人员库。升级过程中，人员库仍然为原算法版本，人员库相关操作仍然支持。升级完成后，人员库为新算法版本。
    /// 单个人员库有且仅支持一次回滚操作。
    ///
    /// 升级是一个耗时的操作，执行时间与人员库的人脸数相关，升级的人员库中的人脸数越多，升级的耗时越长。升级接口是个异步任务，调用成功后返回JobId，通过GetUpgradeGroupFaceModelVersionResult查询升级进度和结果。如果升级成功，人员库版本将切换到新版本。如果想回滚到旧版本，可以调用RevertGroupFaceModelVersion进行回滚。
    ///
    /// 注：某些接口无法进行跨人员库版本操作，例如SearchFaces，SearchPersons和CopyPerson等。当业务有多个Group操作的场景时，如同时搜索Group1和Group2，如果升级了Group1，此时Group1和Group2版本不同，造成了跨版本操作，将导致Search接口无法正常执行，返回不允许执行跨版本操作错误，升级前需考虑业务是否有多库操作的场景，否则会影响线上接口表现。
    @available(*, unavailable, message: "避免官网歧义")
    @inlinable
    public func upgradeGroupFaceModelVersion(groupId: String, faceModelVersion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeGroupFaceModelVersionResponse {
        fatalError("UpgradeGroupFaceModelVersion is no longer available.")
    }
}
