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
import TecoPaginationHelpers

extension Trtc {
    /// DescribeUserInfo请求参数结构体
    public struct DescribeUserInfoRequest: TCPaginatedRequest {
        /// 通话 ID（唯一标识一次通话）： SdkAppId_RoomId（房间号）_ CreateTime（房间创建时间，unix时间戳，单位为s）例：1400xxxxxx_218695_1590065777。通过 DescribeRoomInfo（查询历史房间列表）接口获取（[查询历史房间列表](https://cloud.tencent.com/document/product/647/44050)）。
        public let commId: String

        /// 查询开始时间，本地unix时间戳，单位为秒（如：1590065777）
        /// 注意：支持查询14天内的数据
        public let startTime: UInt64

        /// 查询结束时间，本地unix时间戳，单位为秒（如：1590065877）
        /// 注意：与StartTime间隔时间不超过4小时。
        public let endTime: UInt64

        /// 用户SdkAppId（如：1400xxxxxx）
        public let sdkAppId: UInt64

        /// 需查询的用户数组，不填默认返回6个用户
        /// 范围：[1，100]。
        public let userIds: [String]?

        /// 当前页数，默认为0，
        /// 注意：PageNumber和PageSize 其中一个不填均默认返回6条数据。
        public let pageNumber: UInt64?

        /// 每页个数，默认为6，
        /// 范围：[1，100]。
        public let pageSize: UInt64?

        public init(commId: String, startTime: UInt64, endTime: UInt64, sdkAppId: UInt64, userIds: [String]? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil) {
            self.commId = commId
            self.startTime = startTime
            self.endTime = endTime
            self.sdkAppId = sdkAppId
            self.userIds = userIds
            self.pageNumber = pageNumber
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case commId = "CommId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case sdkAppId = "SdkAppId"
            case userIds = "UserIds"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeUserInfoResponse) -> DescribeUserInfoRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeUserInfoRequest(commId: self.commId, startTime: self.startTime, endTime: self.endTime, sdkAppId: self.sdkAppId, userIds: self.userIds, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize)
        }
    }

    /// DescribeUserInfo返回参数结构体
    public struct DescribeUserInfoResponse: TCPaginatedResponse {
        /// 返回的用户总条数
        public let total: UInt64

        /// 用户信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userList: [UserInformation]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case userList = "UserList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [UserInformation] {
            self.userList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询历史用户列表
    ///
    /// 查询指定时间内的用户列表，可查询14天内数据，查询起止时间不超过4小时。默认每页查询6个用户，支持每页最大查询100个用户PageSize不超过100）。（同老接口DescribeUserInformation）
    /// **注意**：
    /// 1.该接口只用于历史数据统计或核对数据使用，实时类关键业务逻辑不能使用。
    /// 2.该接口目前免费提供中，监控仪表盘商业化计费后该接口需要订阅付费版后方可调用，仪表盘商业化说明请见：https://cloud.tencent.com/document/product/647/77735
    @inlinable
    public func describeUserInfo(_ input: DescribeUserInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserInfoResponse> {
        self.client.execute(action: "DescribeUserInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询历史用户列表
    ///
    /// 查询指定时间内的用户列表，可查询14天内数据，查询起止时间不超过4小时。默认每页查询6个用户，支持每页最大查询100个用户PageSize不超过100）。（同老接口DescribeUserInformation）
    /// **注意**：
    /// 1.该接口只用于历史数据统计或核对数据使用，实时类关键业务逻辑不能使用。
    /// 2.该接口目前免费提供中，监控仪表盘商业化计费后该接口需要订阅付费版后方可调用，仪表盘商业化说明请见：https://cloud.tencent.com/document/product/647/77735
    @inlinable
    public func describeUserInfo(_ input: DescribeUserInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserInfoResponse {
        try await self.client.execute(action: "DescribeUserInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询历史用户列表
    ///
    /// 查询指定时间内的用户列表，可查询14天内数据，查询起止时间不超过4小时。默认每页查询6个用户，支持每页最大查询100个用户PageSize不超过100）。（同老接口DescribeUserInformation）
    /// **注意**：
    /// 1.该接口只用于历史数据统计或核对数据使用，实时类关键业务逻辑不能使用。
    /// 2.该接口目前免费提供中，监控仪表盘商业化计费后该接口需要订阅付费版后方可调用，仪表盘商业化说明请见：https://cloud.tencent.com/document/product/647/77735
    @inlinable
    public func describeUserInfo(commId: String, startTime: UInt64, endTime: UInt64, sdkAppId: UInt64, userIds: [String]? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserInfoResponse> {
        self.describeUserInfo(.init(commId: commId, startTime: startTime, endTime: endTime, sdkAppId: sdkAppId, userIds: userIds, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查询历史用户列表
    ///
    /// 查询指定时间内的用户列表，可查询14天内数据，查询起止时间不超过4小时。默认每页查询6个用户，支持每页最大查询100个用户PageSize不超过100）。（同老接口DescribeUserInformation）
    /// **注意**：
    /// 1.该接口只用于历史数据统计或核对数据使用，实时类关键业务逻辑不能使用。
    /// 2.该接口目前免费提供中，监控仪表盘商业化计费后该接口需要订阅付费版后方可调用，仪表盘商业化说明请见：https://cloud.tencent.com/document/product/647/77735
    @inlinable
    public func describeUserInfo(commId: String, startTime: UInt64, endTime: UInt64, sdkAppId: UInt64, userIds: [String]? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserInfoResponse {
        try await self.describeUserInfo(.init(commId: commId, startTime: startTime, endTime: endTime, sdkAppId: sdkAppId, userIds: userIds, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查询历史用户列表
    ///
    /// 查询指定时间内的用户列表，可查询14天内数据，查询起止时间不超过4小时。默认每页查询6个用户，支持每页最大查询100个用户PageSize不超过100）。（同老接口DescribeUserInformation）
    /// **注意**：
    /// 1.该接口只用于历史数据统计或核对数据使用，实时类关键业务逻辑不能使用。
    /// 2.该接口目前免费提供中，监控仪表盘商业化计费后该接口需要订阅付费版后方可调用，仪表盘商业化说明请见：https://cloud.tencent.com/document/product/647/77735
    @inlinable
    public func describeUserInfoPaginated(_ input: DescribeUserInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [UserInformation])> {
        self.client.paginate(input: input, region: region, command: self.describeUserInfo, logger: logger, on: eventLoop)
    }

    /// 查询历史用户列表
    ///
    /// 查询指定时间内的用户列表，可查询14天内数据，查询起止时间不超过4小时。默认每页查询6个用户，支持每页最大查询100个用户PageSize不超过100）。（同老接口DescribeUserInformation）
    /// **注意**：
    /// 1.该接口只用于历史数据统计或核对数据使用，实时类关键业务逻辑不能使用。
    /// 2.该接口目前免费提供中，监控仪表盘商业化计费后该接口需要订阅付费版后方可调用，仪表盘商业化说明请见：https://cloud.tencent.com/document/product/647/77735
    @inlinable @discardableResult
    public func describeUserInfoPaginated(_ input: DescribeUserInfoRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUserInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUserInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询历史用户列表
    ///
    /// 查询指定时间内的用户列表，可查询14天内数据，查询起止时间不超过4小时。默认每页查询6个用户，支持每页最大查询100个用户PageSize不超过100）。（同老接口DescribeUserInformation）
    /// **注意**：
    /// 1.该接口只用于历史数据统计或核对数据使用，实时类关键业务逻辑不能使用。
    /// 2.该接口目前免费提供中，监控仪表盘商业化计费后该接口需要订阅付费版后方可调用，仪表盘商业化说明请见：https://cloud.tencent.com/document/product/647/77735
    ///
    /// - Returns: `AsyncSequence`s of `UserInformation` and `DescribeUserInfoResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeUserInfoPaginator(_ input: DescribeUserInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeUserInfoRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUserInfo, logger: logger, on: eventLoop)
    }
}
