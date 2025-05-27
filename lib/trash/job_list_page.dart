// import 'package:flutter/material.dart';
// import 'package:leap/controller/data_controller.dart';
// import 'package:leap/model/model.dart';
// import 'package:leap/view/web/job_card/card_job.dart';
// import 'package:provider/provider.dart';

// class JobListPage extends StatefulWidget {
//   final bool isWeb;

//   const JobListPage({super.key, required this.isWeb});

//   @override
//   State<JobListPage> createState() => _JobListPageState();
// }

// class _JobListPageState extends State<JobListPage> {
//   @override
//   void initState() {
//     super.initState();
//     // Load posts when the page initializes
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       context.read<PostProvider>().loadPosts();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: const Text('Jobs'),
//       //   actions: [
//       //     IconButton(
//       //       icon: const Icon(Icons.refresh),
//       //       onPressed: () => context.read<PostProvider>().refreshPosts(),
//       //     ),
//       //   ],
//       // ),
//       body: Consumer<PostProvider>(
//         builder: (context, postProvider, child) {
//           if (postProvider.isLoading) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }

//           if (postProvider.posts.isEmpty) {
//             return Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(
//                     Icons.work_off,
//                     size: 64,
//                     color: Colors.grey[400],
//                   ),
//                   const SizedBox(height: 16),
//                   Text(
//                     'No jobs available',
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.grey[600],
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   TextButton(
//                     onPressed: () =>
//                         context.read<PostProvider>().refreshPosts(),
//                     child: const Text('Retry'),
//                   ),
//                 ],
//               ),
//             );
//           }

//           return RefreshIndicator(
//             onRefresh: () => context.read<PostProvider>().refreshPosts(),
//             child: widget.isWeb
//                 ? _buildWebLayout(postProvider.posts)
//                 : _buildMobileLayout(postProvider.posts),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildWebLayout(List<LeapModel> jobs) {
//     return GridView.builder(
//       shrinkWrap: true,
//       // physics: const NeverScrollableScrollPhysics(),
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         crossAxisSpacing: 24,
//         mainAxisSpacing: 24,
//         childAspectRatio: 1.2,
//       ),
//       itemCount: jobs.length,
//       itemBuilder: (context, index) {
//         return JobCard(
//           isWeb: true,
//           job: jobs[index],
//         );
//       },
//     );
//   }

//   Widget _buildMobileLayout(List<LeapModel> jobs) {
//     return ListView.builder(
//       padding: const EdgeInsets.all(16),
//       itemCount: jobs.length,
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: const EdgeInsets.only(bottom: 16),
//           child: JobCard(
//             isWeb: false,
//             job: jobs[index],
//           ),
//         );
//       },
//     );
//   }
// }
